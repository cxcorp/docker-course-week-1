FROM ubuntu:16.04

WORKDIR /app
COPY . /app

RUN apt-get update
RUN apt-get install -y curl

# get nodejs
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash
RUN apt-get install -y nodejs

EXPOSE 5000

RUN npm install

ENV API_URL http://localhost:1235
CMD ["npm", "start"]