# Gunakan Node.js base image
FROM node:18-alpine

# Set direktori kerja dalam container
WORKDIR /app

# Salin file package.json dan package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Salin seluruh file aplikasi ke container
COPY . .

# Build aplikasi untuk produksi
RUN npm run build

# Ekspos port untuk aplikasi Next.js
EXPOSE 3000

# Perintah untuk menjalankan aplikasi
CMD ["npm", "start"]
