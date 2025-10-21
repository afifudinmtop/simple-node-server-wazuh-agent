# Gunakan base Ubuntu 22.04
FROM ubuntu:22.04

# Hindari prompt interaktif
ENV DEBIAN_FRONTEND=noninteractive

# Update & install dependencies dasar
RUN apt-get update && apt-get install -y \
    curl wget sudo ca-certificates gnupg lsb-release \
    && rm -rf /var/lib/apt/lists/*

# Install Node.js 20 LTS
RUN curl -fsSL https://deb.nodesource.com/setup_20.x | bash - \
    && apt-get install -y nodejs \
    && npm install -g npm@latest

# Tentukan direktori kerja
WORKDIR /app

# Salin file package.json dan install dependency
COPY package.json .
RUN npm install --production

# Salin semua source code aplikasi
COPY . .

# Expose port aplikasi (ubah sesuai kebutuhanmu)
EXPOSE 3000

# Jalankan aplikasi
CMD ["node", "server.js"]
