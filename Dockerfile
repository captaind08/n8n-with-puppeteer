# Base image
FROM n8nio/n8n:latest

# Install necessary dependencies for Puppeteer
RUN apt-get update && apt-get install -y \
    gconf-service \
    libasound2 \
    libatk1.0-0 \
    libcups2 \
    libdbus-1-3 \
    libgconf-2-4 \
    libgtk-3-0 \
    libnspr4 \
    libnss3 \
    libxss1 \
    lsb-release \
    xdg-utils \
    wget \
    libgbm-dev \
    libxshmfence-dev \
    fonts-liberation \
    libappindicator3-1 \
    libatk-bridge2.0-0 \
    libpangocairo-1.0-0 \
    libpango-1.0-0 \
    libatk1.0-0

# Install Puppeteer with Chromium
RUN npm install puppeteer@latest --unsafe-perm=true

# Expose the n8n port
EXPOSE 5678

# Set the command to start n8n
CMD ["n8n"]
