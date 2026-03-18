pipeline {
  agent any

  options {
    timestamps()
    timeout(time: 30, unit: 'MINUTES')
    buildDiscarder(logRotator(numToKeepStr: '5', artifactNumToKeepStr: '5'))
  }

  environment {
    GHCR_CREDENTIALS = "ghcr.io/mercy299/positivus"
    LOCAL_IMAGE     = "positivus-local"
    SONAR_URL       = "http://localhost:9000"
    NODE_OPTIONS    = "--max-old-space-size=1536"
  }

  stages {
    stage('Checkout') {
      steps {
        checkout scm
        script {
          env.GIT_SHORT_SHA = sh(script: "git rev-parse --short HEAD", returnStdout: true).trim()
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
        '''
      }
    }

    stage('SonarQube Analysis') {
      steps {
        withSonarQubeEnv('SonarQube-Server') {
            script {
                def scannerHome = tool 'SonarQube Scan'
                
                sh "rm -rf node_modules"
                sh """
                    ${scannerHome}/bin/sonar-scanner \
                    -Dsonar.projectKey=positivus-app \
                    -Dsonar.javascript.node.maxspace=3072 \
                    -Dsonar.exclusions="**/node_modules/**,**/dist/**,**/build/**"
                """
            }
        }
      }
    }

   stage('Build & Test') {
      steps {
        sh "docker build --pull -t ${LOCAL_IMAGE} ."
        script {
            // Start container in background
            sh "docker run -d --name test-bench -p 8088:80 ${LOCAL_IMAGE}"
            // Wait a second for Nginx/App to boot
            sleep 3
            // Curl from the HOST (Jenkins Agent)
            sh "curl -f http://localhost:8088/"
            // Clean up
            sh "docker rm -f test-bench"
        }
      }
    }

    stage('Smoke Test') {
      steps {
        sh """
          set -eux
          TEST_PORT=8088
          CID=\$(docker run -d -p \${TEST_PORT}:80 ${LOCAL_IMAGE})
          sleep 5
          curl -fsS http://localhost:\${TEST_PORT}/ >/dev/null
          echo "Smoke test passed"
          docker rm -f "\$CID"
        """
      }
    }

    stage('Trivy Image Scan') {
      steps {
        sh """
          docker run --rm \
            -v /var/run/docker.sock:/var/run/docker.sock \
            -v ${HOME}/.cache:/root/.cache \
            aquasec/trivy:latest \
            image --severity HIGH,CRITICAL --exit-code 1 ${LOCAL_IMAGE}
        """
      }
    }


    stage('Push to GHCR') {
      steps {
        withCredentials([usernamePassword(credentialsId: 'GHCR_CREDENTIALS', usernameVariable: 'U', passwordVariable: 'P')]) {
          sh "echo '$P' | docker login ghcr.io -u '$U' --password-stdin"
          sh """
            docker tag ${LOCAL_IMAGE} ${GHCR_CREDENTIALS}:${BUILD_NUMBER}
            docker tag ${LOCAL_IMAGE} ${GHCR_CREDENTIALS}:${GIT_SHORT_SHA}
            docker push ${GHCR_CREDENTIALS}:${BUILD_NUMBER}
            docker push ${GHCR_CREDENTIALS}:${GIT_SHORT_SHA}
          """
        }
      }
    }
  }

  post {
    always {
      sh 'docker system prune -f || true'
    }
  }
}
