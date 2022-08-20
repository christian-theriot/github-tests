FROM node:lts-alpine as build
LABEL org.opencontainers.image.description "Test of github actions"
WORKDIR /app

COPY package.json package-lock.json ./

RUN npm install

COPY . .

RUN npm run build

CMD ["node", "dist/index.js"]