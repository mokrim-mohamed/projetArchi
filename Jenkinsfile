pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git branch: 'developpe', url: 'https://github.com/mokrim-mohamed/projectTest'
            }
        }

        stage('Build') {
            steps {
                echo "Build étape"
                // Ajouter ici les commandes de build
            }
        }

        stage('Test') {
            steps {
                echo "Test étape"
                // Ajouter ici les commandes de test
            }
        }

        
    }

    post {
        always {
            echo 'Toujours exécuté - Nettoyer le workspace par exemple'
            cleanWs()
        }
        success {
            echo 'Réussite - Envoyer une notification par email, par exemple'
        }
        failure {
            echo "Échec - Alerter l'équipe de développement, par exemple"
        }
    }
}
