FROM python:3.11-slim

# Empêche la création de fichiers .pyc
ENV PYTHONDONTWRITEBYTECODE=1
# Affiche directement les logs dans la console
ENV PYTHONUNBUFFERED=1

# Dossier de travail dans le conteneur
WORKDIR /app

# Copier les dépendances
COPY requirements.txt .

# Installer les dépendances
RUN pip install --no-cache-dir -r requirements.txt

# Copier le reste du projet
COPY . .

# Commande à exécuter pour démarrer le serveur
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
