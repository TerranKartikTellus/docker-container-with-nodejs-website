# base image 
FROM node:alpine

# dependency
WORKDIR /usr/app

COPY ./package.json ./
RUN npm install
COPY ./ ./ 

# startup command
CMD ["npm","start"]