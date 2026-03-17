pipeline {
  agent any

  options {
    timestamps()
    timeout(time: 30, unit: 'MINUTES')
    buildDiscarder(logRotator(numToKeepStr: '5', artifactNumToKeepStr: '5'))

  }

  environment {
    HTTP_PROXY  = 'http://172.25.20.117:80'
    HTTPS_PROXY = 'http://172.25.20.117:80'
    NO_PROXY    = 'localhost,127.0.0.1'
    GHCR_REPOSITORY = "ghcr.io/mercy299/positivus"
    SONAR_OPTS = "-e SONAR_SCANNER_OPTS='-Xmx512m' -Dsonar.javascript.node.maxspace=3072"
    PROXY_OPTS = "--build-arg HTTP_PROXY=http://172.25.20.117:80 --build-arg HTTPS_PROXY=http://172.25.20.117:80"
    NODE_OPTIONS = "--max-old-space-size=1536"


  }

  stages {
    stage('Checkout') {
      steps {
        checkout scm
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

    stage('SonarQube Scan') {
      steps {
        withCredentials([string(credentialsId: 'sonarqube-token-id', variable: 'SONAR_TOKEN')]) {
          sh "rm -rf node_modules" 
          sh '''
            set -eux
            docker run --rm \
              --network host \
              -e SONAR_HOST_URL="http://172.26.44.144:9000" \
              -e SONAR_TOKEN="$SONAR_TOKEN" \
              -e http_proxy="$HTTP_PROXY" \
              -e https_proxy="$HTTPS_PROXY" \
              -e no_proxy="localhost,127.0.0.1,172.26.44.144" \
              -v "$PWD:/usr/src" \
              -w /usr/src \
              sonarsource/sonar-scanner-cli:latest \
              -Dsonar.javascript.node.maxspace=3072 \
              -Dsonar.exclusions="**/node_modules/**,**/dist/**,**/build/**"
          '''
        }
      }
    }

    stage('Build & Test') {
      steps {
        sh "docker build --pull ${PROXY_OPTS} -t ${LOCAL_IMAGE} ."
        sh "docker run --rm -p 8088:80 ${LOCAL_IMAGE} curl -f http://localhost:8088/"
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

  stage('Push to GHCR') {
      steps {
        withCredentials([usernamePassword(credentialsId: 'GHCR_CREDENTIALS', usernameVariable: 'U', passwordVariable: 'P')]) {
          sh "echo '$P' | docker login ghcr.io -u '$U' --password-stdin"
          sh """
            docker tag ${LOCAL_IMAGE} ${GHCR_REPO}:${BUILD_NUMBER}
            docker tag ${LOCAL_IMAGE} ${GHCR_REPO}:${GIT_SHORT_SHA}
            docker push ${GHCR_REPO}:${BUILD_NUMBER}
            docker push ${GHCR_REPO}:${GIT_SHORT_SHA}
          """
        }
      }
    }
  }
  post {
    success {
      echo "SUCCESS: Image pushed to GHCR"
    }
    failure {
      echo "FAILURE: Pipeline failed"
    }
    always {
      sh 'docker system prune -af || true'
    }
  }
}
