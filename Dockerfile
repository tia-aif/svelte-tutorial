# Dockerfile

FROM node:18-alpine as deploy-node


RUN npm 

WORKDIR /app
RUN rm -rf ./*
COPY --from=build /app/package.json .
COPY --from=build /app/build .

RUN npx yarn --prod

CMD ["node","index.js"]