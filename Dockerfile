FROM node:20.16.0

# create app directory, this is in our container/image
WORKDIR /usr/src/app


COPY package*.json ./ 

RUN npm install

COPY . . 

RUN npm run build

EXPOSE 8080

CMD [ "node", "dist/main" ]