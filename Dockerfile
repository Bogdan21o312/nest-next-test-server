FROM node:alpine

WORKDIR /app

EXPOSE 3487

COPY package*.json ./

RUN npm install

COPY . .

CMD [ "npm", "run", "start:dev" ]
