# Utiliser l'image de base Python
FROM python:3.9-slim

# Définir le répertoire de travail dans le conteneur
FROM jenkins/jenkins:lts
MAINTAINER madhusudan reddy
USER root
RUN apt-get -y update; apt-get install -y sudo; apt-get install -y git wget
RUN echo "Jenkins ALL=NOPASSWD: ALL" >> /etc/sudoers
RUN wget http://get.docker.com/builds/Linux/x86_64/docker-latest.tgz
RUN tar -xvzf docker-latest.tgz
RUN mv docker/* /usr/bin/
USER Jenkins

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