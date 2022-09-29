FROM node:14.19.1-alpine as builder

WORKDIR /apps
COPY package*.json ./

COPY . .

RUN npm install

EXPOSE 3000

ENTRYPOINT [ "npm", "start" ]