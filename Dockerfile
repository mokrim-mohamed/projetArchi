# Utiliser l'image de base Python
FROM python:3.9-slim

# Définir le répertoire de travail dans le conteneur

version: '3.8'
services:
  jenkins-container:
    build: .
    # no image:
    volumes:
      - ./data:/var/jenkins_home
      # but not /usr/bin/docker


WORKDIR /app
# Copier le fichier requirements.txt dans le conteneur
COPY ./my-project/requirements.txt .
COPY ./my-project/src .
COPY ./my-project/tests ./tests
COPY ./my-project/run_tests.sh .
# Installer les dépendances Python
RUN pip install --no-cache-dir -r requirements.txt
RUN chmod +x run_tests.sh
# Copier tous les fichiers du projet dans le conteneur


# Exposer le port sur lequel l'application Flask s'exécute

# Commande par défaut pour exécuter l'application
CMD ["./run_tests_and_start.sh"]