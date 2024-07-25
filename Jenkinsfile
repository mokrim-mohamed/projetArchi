pipeline {
    agent any

    environment {
        DOCKER_BIN = "/usr/bin/docker" 
        DOCKERHUB_CREDENTIALS = credentials('dockerhub-credentials-id') // ID des credentials Docker dans Jenkins
    }

    stages {
        stage('Checkout') {
            steps {
                // Checkout du code source depuis GitHub
                git branch: 'developper', url: 'https://github.com/mokrim-mohamed/projetArchi'
            }
        }

        stage('Build') {
            steps {
                  dir(DOCKER_BIN) {
                    // Exemple de commande pour construire votre application dans le répertoire de travail distant
                    sh 'docker build -t votre-image:latest .'
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
