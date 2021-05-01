FROM node:14

WORKDIR /

COPY package*.json .

RUN npm install

COPY server.js .
COPY README.md .

EXPOSE 8080

CMD [ "npm", "start" ]