FROM node:latest

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

COPY . .

RUN mkdir bin

RUN unzip -a live555-latest.zip

RUN cd live555-latest/live \
&& ./genMakefiles linux-64bit \
&& make && cd proxyServer \
&& cp live555ProxyServer ../../../bin/live555ProxyServer
