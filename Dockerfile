FROM node:12

WORKDIR /source

ADD package.json package.json
ADD package-lock.json package-lock.json

RUN npm install

ADD tsconfig.json tsconfig.json

COPY ./src ./src

RUN npm run build

ADD ./chatting-service.proto ./chatting-service.proto

CMD node /source/dist/server.js