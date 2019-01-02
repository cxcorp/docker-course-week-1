FROM ubuntu:16.04

WORKDIR /app
COPY . /app

RUN apt-get update
RUN apt-get install -y curl

# get nodejs
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash
RUN apt-get install -y nodejs

EXPOSE 8000

RUN npm install

ENV FRONT_URL http://localhost:1234
CMD ["npm", "start"]