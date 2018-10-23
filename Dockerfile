FROM nodered/node-red-docker:slim-v8

USER root

RUN apk add openzwave openzwave-dev python linux-headers make g++

USER node-red

RUN npm install node-red-dashboard
RUN npm install node-red-contrib-openzwave
RUN npm install node-red-contrib-modbus