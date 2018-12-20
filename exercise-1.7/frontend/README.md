# frontend-example-docker

This project is created to help learn docker configurations for frontend projects.

# Prerequisites

Install [node](https://nodejs.org/en/download/). 

Example node install instructions for LTS node 10.x:
```
curl -sL https://deb.nodesource.com/setup_10.x | bash
sudo apt install -y nodejs
```

Check your install with `node -v && npm -v`

Install all packages with `npm install`

# Running with Docker

1. Install Docker
2. Build the image with `docker build -t sample-frontend .`
3. Run the image with `docker run -p 1234:5000 sample-frontend`

The frontend is now running on port 1234. If you started the backend at port 1235, the app will be able to ping the server.

# Starting in production mode

Notice, that all the information are not needed in all the exercises.

## Exercise 1.4 and thereafter

To build and serve in production mode: `npm start`
This builds the project in dist folder and serves it in port 5000.

You can alternatively build the project with `npm run build` and then serve it in any way you want, for example:

To use a npm package called serve to serve the project in port 5000:
- install: `npm install -g serve`
- serve: `serve -s -l 5000 dist`

Test that the project is running by going to <http://localhost:5000>

## Exercise 1.6 and beyond

By default the expected path to backend is /api. To manually configure api path run with `API_URL=<url> npm start|build`
