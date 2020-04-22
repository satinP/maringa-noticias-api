FROM node:latest

# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Install app dependencies
COPY package.json /usr/src/app/
RUN npm install && apt-get install -yq libgconf-2-4

# Bundle app source
COPY . /usr/src/app

EXPOSE 8080

