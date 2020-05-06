# API-SDK
Edge calculation unit - camera SDK/APIs project.

### Requirements
`NodeJs`: 13.13.0+
`NPM`: 6.14.4+
## Local run
1. Pull the code using `git pull`;
2. Perform `npm i`;
3. Perform `node .`

It will use the configuration from `.env` file, you need to create it base on `.env-example`. The default backend host is `http://localhost:3000`.
## Docker run
#### Requirements
`Docker`: 19.03.3+
For code deploying we using docker image from docker hub
1. For using docker image required to have docker-hub account https://hub.docker.com/
2. Pull docker container `docker pull dockerteamrecon/api-sdk`
3. Project using the configuration from `.env` file, you need to create it based on `.env-example`. The default backend host is `http://localhost:3000`.
4. Also need to add file `conf.yml` with camera resources based on `conf.yml.sample` file.

Using winston logger, it write logs at directory `logs` - 
`error.log` - with errors and `combined.log` - with errors and info
also it use console if production mode is not set

*NOTE*: Docker container run in Host network with direct ports opened.
