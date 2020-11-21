FROM node:14-alpine

LABEL maintainer="sysquenvietnam@gmail.com"

RUN apk add --no-cache bash && mkdir -p /usr/src/app

WORKDIR /usr/src/app

ENV PATH /usr/src/app/node_modules/.bin:$PATH

COPY . . 

EXPOSE 4200

RUN npm install -g @angular/cli 
