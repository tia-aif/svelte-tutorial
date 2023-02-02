FROM node:16-alpine

# install simple http server for serving static content
RUN npm install -g http-server
RUN npm install -g serve
# make the 'app' folder the current working directory
WORKDIR /app

# copy both 'package.json' and 'package-lock.json' (if available)
COPY package*.json ./

COPY package-lock.json ./

# install project dependencies
RUN npm install

# copy project files and folders to the current working directory (i.e. 'app' folder)
COPY . .

# build app for production with minification
RUN npm run build

RUN serve -s dist
# RUN npm run preview

# FROM nginx:1.19-alpine

# COPY --from=build /app/public /usr/share/nginx/html

EXPOSE 8080
CMD [ "http-server", "build/prerendered" ]