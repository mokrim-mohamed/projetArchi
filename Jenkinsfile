pipeline {
    agent any  // Utiliser n'importe quel agent disponible
    environment {
        // Définir les variables d'environnement
        DOCKER_IMAGE_NAME = 'mon-projet'
        DOCKER_IMAGE_TAG = 'latest'
   
        REGISTRY = 'docker.io'  // Remplacez par l'URL de votre registre si différent
        REPOSITORY = 'mokrim/test'
    }
    stages {
        stage('Checkout') {
            steps {
                // Récupérer le code source depuis le repository
                git url: 'https://github.com/mokrim-mohamed/projetArchi', branch: 'main'
            }
        }
        stage('Check Docker') {
            steps {
                script {
                    // Vérifier que Docker est accessible et obtenir la version
                    sh 'docker --version'
                    
                    // Optionnel : Exécuter un conteneur Docker basique pour vérifier que Docker fonctionne correctement
                   
                }
            }
        }
        stage('Echo Message') {
            steps {
                // Exemple de commande pour afficher un message
                echo 'echo "Le code a été récupéré avec succès et le pipeline est en cours d\'exécution."'
            }
        }
            stage('Build Docker Image') {
            steps {
                script {
                    // Construire l'image Docker
                    def image = docker.build("${IMAGE_NAME}:${IMAGE_TAG}")
                    echo 'image a ete cree'

                }
            }
        }

        stage('Push Docker Image') {
            steps {
                script {
                    // Se connecter au registre Docker
                    docker.withRegistry("https://${REGISTRY}", 'docker-credentials-id') {
                        // Pousser l'image Docker vers le registre
                        docker.image("${IMAGE_NAME}:${IMAGE_TAG}").push("${IMAGE_TAG}")
                    }
                }
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
