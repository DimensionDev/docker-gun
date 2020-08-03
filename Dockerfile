FROM node:lts-alpine
WORKDIR /app
COPY . .
RUN npm ci

WORKDIR /app/data
EXPOSE 8765
CMD ["node", "/app/index.js"]
