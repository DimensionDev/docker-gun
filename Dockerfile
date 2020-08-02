FROM node:lts-alpine
WORKDIR /app
COPY . .
RUN npm ci --production

WORKDIR /app/data
EXPOSE 8765
CMD ["node", "/app/index.js"]
