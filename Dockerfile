FROM node:10.6.0

COPY package.json ./my-project/
WORKDIR /my-project/
RUN npm install --silent

COPY . /my-project/
