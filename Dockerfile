# Utiliser l'image de base Python
FROM python:3.9-slim

# Définir le répertoire de travail dans le conteneur


# Copier le fichier requirements.txt dans le conteneur
COPY ./my-project/requirements.txt .

# Installer les dépendances Python
RUN pip install --no-cache-dir -r requirements.txt

# Copier tous les fichiers du projet dans le conteneur
COPY ./my-project/src .

# Exposer le port sur lequel l'application Flask s'exécute

# Commande par défaut pour exécuter l'application
CMD ["python", "./app.py"]
