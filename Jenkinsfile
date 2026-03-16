pipeline {
  agent any

  options {
    timestamps()
    timeout(time: 30, unit: 'MINUTES')
  }

  environment {
    HTTP_PROXY  = 'http://172.25.20.117:80'
    HTTPS_PROXY = 'http://172.25.20.117:80'
    NO_PROXY    = 'localhost,127.0.0.1'

    GHCR_REPOSITORY = "ghcr.io/mercy299/Positivus"
  }

  stages {

    stage('Checkout') {
      steps {
        checkout scm

        // store short SHA for tagging
        sh 'git rev-parse --short HEAD > .git/shortsha'
        script {
          env.GIT_SHORT_SHA = readFile('.git/shortsha').trim()
        }

        echo "Commit: ${env.GIT_SHORT_SHA}"
      }
    }

    stage('Preflight Checks') {
      steps {
        sh '''
          set -eux
          docker --version
          test -f Dockerfile
          test -f nginx.conf
        '''
      }
    }

    stage('Build Docker Image') {
      steps {
        script {
          env.LOCAL_IMAGE = "positivus-frontend:${BUILD_NUMBER}"
        }

        sh """
          set -eux
          docker build \\
            --pull \\
            --build-arg HTTP_PROXY=$HTTP_PROXY \\
            --build-arg HTTPS_PROXY=$HTTPS_PROXY \\
            --build-arg NO_PROXY=$NO_PROXY \\
            --label org.opencontainers.image.revision=${GIT_SHORT_SHA} \\
            -t ${LOCAL_IMAGE} .
        """
      }
    }

    stage('Smoke Test') {
      steps {
        sh """
          set -eux
          TEST_PORT=8088

          CID=\$(docker run -d -p \${TEST_PORT}:80 ${LOCAL_IMAGE})
          sleep 3

          curl -fsS http://localhost:\${TEST_PORT}/ >/dev/null

          echo "Smoke test passed"

          docker rm -f "\$CID" >/dev/null 2>&1 || true
        """
      }
    }

    stage('Login to GHCR') {
      steps {
        script {
          withCredentials([usernamePassword(
            credentialsId: 'GHCR_CREDENTIALS',   // MUST MATCH Jenkins Credential ID
            usernameVariable: 'GHCR_USER',
            passwordVariable: 'GHCR_TOKEN'
          )]) {
            sh """
              echo "$GHCR_TOKEN" | docker login ghcr.io -u "$GHCR_USER" --password-stdin
            """
          }
        }
      }
    }

    stage('Tag & Push Image') {
      steps {
        script {
          env.GHCR_TAG_BUILD = "${GHCR_REPOSITORY}:${BUILD_NUMBER}"
          env.GHCR_TAG_SHA   = "${GHCR_REPOSITORY}:${GIT_SHORT_SHA}"
        }

        sh """
          set -eux
          docker tag ${LOCAL_IMAGE} ${GHCR_TAG_BUILD}
          docker tag ${LOCAL_IMAGE} ${GHCR_TAG_SHA}

          docker push ${GHCR_TAG_BUILD}
          docker push ${GHCR_TAG_SHA}

          echo "Pushed:"
          echo " - ${GHCR_TAG_BUILD}"
          echo " - ${GHCR_TAG_SHA}"
        """
      }
    }
  }

  post {
    success {
      echo "SUCCESS: Image pushed to GHCR:"
      echo " → ${GHCR_REPOSITORY}:${BUILD_NUMBER}"
      echo " → ${GHCR_REPOSITORY}:${GIT_SHORT_SHA}"
    }
    failure {
      echo "FAILURE: Pipeline failed"
    }
    always {
      sh 'docker system prune -f || true'
    }
  }
}
