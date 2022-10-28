FROM node:16

WORKDIR /usr/src/app

COPY ./project/package.json ./project/yarn.lock ./
RUN yarn

COPY ./project/ .
RUN yarn build

EXPOSE 7000

CMD yarn gatsby develop --host=0.0.0.0 --port=7000
