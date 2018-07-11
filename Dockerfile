FROM node:10.6.0

COPY package.json ./
RUN npm install --silent

COPY . .
