# Utiliser l'image Python comme base
FROM python:3.9-slim

# Définir le répertoire de travail
WORKDIR /app

# Copier les fichiers de dépendances
COPY requirements.txt .

# Installer les dépendances
RUN pip install --no-cache-dir -r requirements.txt

# Copier le code de l'application
COPY . .

# Exposer le port sur lequel l'application va s'exécuter
EXPOSE 8000

# Commande pour démarrer l'application
CMD ["uvicorn", "mini-groq:app", "--host", "0.0.0.0", "--port", "8000"]
