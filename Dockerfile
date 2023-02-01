# Dockerfile

FROM node:16-alpine

RUN npm install -g http-server

WORKDIR /app
COPY package.json ./
RUN npm install 

COPY . .
RUN npm build

EXPOSE 3000
CMD ["node", "build"]