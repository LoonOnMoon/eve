# syntax=docker/dockerfile:1
FROM node
RUN mkdir /eve \
    && cd /eve \
    && npm install dotenv
COPY ./src/app.js /eve
CMD ["node", "/eve/app.js"]
EXPOSE 3000