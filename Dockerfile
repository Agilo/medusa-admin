FROM node:16

WORKDIR /usr/src/app

COPY ./project/package.json ./project/yarn.lock ./
RUN yarn

COPY ./project/ .

EXPOSE 7000

CMD ["yarn", "vite", "--port", "7000", "--host", "0.0.0.0"]
