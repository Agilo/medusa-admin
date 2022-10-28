FROM node:16

WORKDIR /usr/src/app

COPY ./project/package.json ./project/yarn.lock ./
RUN yarn

COPY ./project/ .
RUN yarn build

EXPOSE 9000

CMD yarn serve
