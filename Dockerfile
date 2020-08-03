FROM node:lts-alpine
WORKDIR /app
COPY index.js package.json package-lock.json ./
RUN npm ci

WORKDIR /app/data
EXPOSE 8765
CMD ["node", "/app/index.js"]
