pipeline {
    agent any  // Utiliser n'importe quel agent disponible

    environment {
        // Définir des variables d'environnement si nécessaire
        PROJECT_NAME = 'mon-projet'
        IMAGE_NAME = 'mon-projet'
        IMAGE_TAG = 'latest'
    }

    stages {
        stage('Checkout') {
            steps {
                // Récupérer le code source depuis le repository
                git url: 'https://github.com/mokrim-mohamed/projetArchi'
            }
        }

        stage('Build') {
            steps {
             docker.build("${IMAGE_NAME}:${IMAGE_TAG}")
            }
        }

        stage('Test') {
            steps {
                // Exemple de commande pour exécuter les tests
              
            }
        }

        stage('Deploy') {
            steps {
              
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
