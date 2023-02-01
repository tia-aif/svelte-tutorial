# Dockerfile

FROM node:16-alpine as build


RUN npm install

WORKDIR /app

COPY . .

RUN npm build
FROM nginx:1.18-alpine as deploy-static

WORKDIR /usr/share/nginx/html
RUN rm -rf .;*
COPY --from==build /app/build .
ENTRYPOINT ["nginx","-g","daemon off;"]