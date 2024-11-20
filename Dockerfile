# Utilise l'image officielle Node.js légère
FROM node:18-alpine

# Définit le répertoire de travail pour les instructions suivantes
WORKDIR /app

# Copie le code source dans le conteneur
COPY . .

# Installe les dépendances en production uniquement
RUN yarn install --production

#Installer curl
RUN apk --no-cache add curl

# Configure la commande de démarrage pour exécuter l'application
CMD ["node", "src/index.js"]

# Expose le port 3000 pour l'accès à l'application
EXPOSE 3000
