# Usar una imagen base de Node.js
FROM node:14

# Establecer el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copiar el package.json y el package-lock.json (si existe) al directorio de trabajo
COPY package*.json ./

# Instalar las dependencias de la aplicación
RUN npm install

# Copiar el resto de los archivos de la aplicación al directorio de trabajo
COPY . .

# Exponer el puerto en el que la aplicación expone su servicio
EXPOSE 3000

# Comando para ejecutar la aplicación
CMD ["node", "/app/app.js"]
