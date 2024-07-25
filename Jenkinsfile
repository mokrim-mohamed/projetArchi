pipeline {
    agent any  // Utiliser n'importe quel agent disponible
    environment {
        // Définir les variables d'environnement
        DOCKER_IMAGE_NAME = 'mon-projet'
        DOCKER_IMAGE_TAG = 'latest'
    }
    stages {
        stage('Checkout') {
            steps {
                // Récupérer le code source depuis le repository
                git url: 'https://github.com/mokrim-mohamed/projetArchi', branch: 'main'
            }
        }
        stage('Build Docker Image') {
            steps {
                script {
                    // Construire l'image Docker
                    docker.build("${DOCKER_IMAGE_NAME}:${DOCKER_IMAGE_TAG}")
                }
            }
        }
        stage('Echo Message') {
            steps {
                // Exemple de commande pour afficher un message
                echo 'echo "Le code a été récupéré avec succès et le pipeline est en cours d\'exécution."'
            }
        }
    }

    post {
        success {
            echo 'Le pipeline s\'est terminé avec succès.'
        }

        failure {
            echo 'Le pipeline a échoué.'
        }
    }
}
