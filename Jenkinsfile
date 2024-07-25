pipeline {
    agent any  // Utiliser n'importe quel agent disponible

    stages {
        stage('Checkout') {
            steps {
                // Récupérer le code source depuis le repository
                git url: 'https://github.com/mokrim-mohamed/projetArchi'
            }
        }

        stage('Build') {
            steps {
                // Exemple de commande de construction
                  // Remplacez par votre commande de construction
            }
        }

        stage('Test') {
            steps {
                // Exemple de commande pour exécuter les tests
             // Remplacez par votre commande de tests
            }
        }

        stage('Deploy') {
            steps {
                // Exemple de commande pour déployer l'application
                // Ajoutez ici les commandes spécifiques à votre déploiement
                echo 'Déploiement en cours...'  // Remplacez par votre commande de déploiement
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
