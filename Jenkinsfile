pipeline {
    agent any

    environment {
        DOCKERHUB_CREDENTIALS = credentials('dockerhub-credentials-id') // ID des credentials Docker dans Jenkins
    }

    stages {
        stage('Checkout') {
            steps {
                // Checkout du code source depuis GitHub
                git branch: 'developpe', url: 'https://github.com/mokrim-mohamed/projectTest'
            }
        }

        stage('Build') {
            steps {
                // Construction de l'image Docker
                script {
                    docker.build('votre-image:latest')
                }
            }
        }

        stage('Test') {
            steps {
                // Lancer les tests dans un conteneur Docker
                script {
                    docker.image('votre-image:latest').inside {
                        sh './run_tests.sh' // Script ou commande pour lancer les tests
                    }
                }
            }
        }

        stage('Push Image') {
            when {
                expression {
                    currentBuild.result == null || currentBuild.result == 'SUCCESS'
                }
            }
            steps {
                script {
                    // Login à Docker Hub
                    docker.withRegistry('https://index.docker.io/v1/', 'dockerhub-credentials-id') {
                        // Tag et Push de l'image Docker
                        docker.image('votre-image:latest').push('latest')
                    }
                }
            }
        }

        stage('Deploy') {
            steps {
                // Déployer l'image Docker (par exemple, avec docker-compose)
                sh 'docker-compose up -d'
            }
        }
    }

    post {
        always {
            // Clean up
            sh 'docker system prune -f'
        }
    }
}
