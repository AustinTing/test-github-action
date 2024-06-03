FROM node:18-slim
WORKDIR /app

COPY package*.json ./src/app.js ./

RUN npm ci && \
  npm cache clean --force

EXPOSE 3000
CMD ["node", "app.js"]