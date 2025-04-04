# Base image
FROM node:18

# Create and set working directory
WORKDIR /usr/src/app

# Install n8n
RUN npm install -g n8n

# Install Puppeteer (if you prefer Playwright, replace this line with `RUN npm install playwright`)
RUN npm install puppeteer

# Install dependencies required by Puppeteer
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
    libxshmfence-dev

# Expose port
EXPOSE 5678

# Set the command to run n8n
CMD ["n8n"]
