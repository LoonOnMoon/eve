# syntax=docker/dockerfile:1
FROM node

WORKDIR /eve
COPY app.js ./
COPY .env ./

COPY package*.json ./

RUN  npm install dotenv

EXPOSE 3000
CMD ["node", "app.js"]