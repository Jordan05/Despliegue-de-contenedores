# Usa Node.js
FROM node:18-alpine

# Crea carpeta de la app
WORKDIR /app

# Copia los archivos del proyecto (package.json y package-lock.json si existe)
COPY package*.json ./

# Instala dependencias
RUN npm install

# Copia el resto del proyecto
COPY . .

# Expone el puerto
EXPOSE 3000

# Comando para iniciar la app
CMD ["npm", "start"]
