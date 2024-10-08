# Utiliser l'image de base Python
FROM python:3.9-slim
FROM jenkins/jenkins:lts-jdk17
USER root
RUN apt-get update \
 && DEBIAN_FRONTEND=noninteractive \
    apt-get install --no-install-recommends --assume-yes \
      docker.io
USER jenkins
# Définir le répertoire de travail dans le conteneur
WORKDIR /app
# Copier le fichier requirements.txt dans le conteneur
COPY requirements.txt .
COPY ./my-project/src .

# Installer les dépendances Python

# Copier tous les fichiers du projet dans le conteneur


# Exposer le port sur lequel l'application Flask s'exécute

# Commande par défaut pour exécuter l'application
