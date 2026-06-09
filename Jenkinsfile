pipeline {
    agent any

    triggers {
        // Trigger the build every 1 minute
        pollSCM('* * * * *')
    }

    environment {
        // Replace 'your-docker-username' with your actual Docker Hub username
        DOCKER_IMAGE = 'ajaygangwar945/git-github-navigator'
        DOCKER_TAG   = "${env.BUILD_NUMBER}"
    }

    stages {
        stage('Checkout Code') {
            steps {
                checkout scm
            }
        }

        stage('Docker Login') {
            steps {
                // 'dockerhub-creds' should be set up in Jenkins as a "Username with password" credential type
                withCredentials([usernamePassword(credentialsId: 'dockerhub-creds', usernameVariable: 'DOCKER_USER', passwordVariable: 'DOCKER_PASS')]) {
                    sh 'echo "$DOCKER_PASS" | docker login -u "$DOCKER_USER" --password-stdin'
                }
            }
        }

        stage('Build Docker Image') {
            steps {
                sh "docker build -t ${DOCKER_IMAGE}:${DOCKER_TAG} -t ${DOCKER_IMAGE}:latest ."
            }
        }

        stage('Push Docker Image') {
            steps {
                sh "docker push ${DOCKER_IMAGE}:${DOCKER_TAG}"
                sh "docker push ${DOCKER_IMAGE}:latest"
            }
        }
    }

    post {
        always {
            // Log out from Docker Hub to clean up credentials on the build node
            sh 'docker logout'
        }
    }
}
