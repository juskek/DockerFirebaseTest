# FROM init new build stage 
# set node.js 12.14.1 as base image
FROM node:12.14.1
# set working directory
WORKDIR /DockerFirebaseTest
# RUN execute commands on new layer on top of image
# npm: package manager for node.js and JS
# i: install
# -g: global package
COPY package.json package-lock.json ./
RUN npm i -g npm
RUN npm install -g firebase-tools
EXPOSE 9005
COPY . .

