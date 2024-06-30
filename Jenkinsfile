pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git branch: 'developper', url: 'https://github.com/mokrim-mohamed/projectTest'
            }
        }
         stages {
        stage('Build and Run Docker Image') {
            steps {
                script {
                    // Construire l'image Docker (si nécessaire)
                    docker.build('monprojet:latest')

                    // Démarrer le conteneur Docker à partir de l'image
                    docker.image('monprojet:latest').run('-p 8080:80')
                }
            }
        }
    }

        // Ajouter d'autres étapes de build, test, et déploiement ici
    }
}
