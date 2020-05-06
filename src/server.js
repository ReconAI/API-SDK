require('dotenv').config();
const Hapi = require('@hapi/hapi');
const hapiBoomDecorators = require('hapi-boom-decorators');

const logger = require('./lib/Logger');
const SimpleProxy = require('./lib/SimpleProxy');
const routes = require('./api');

const port = 3000;

const setExtensions = (server) => {
  // Insert logger to request
  server.ext({
    type: 'onRequest',
    method: async (request, h) => {
      request.server.logger = logger;
      return h.continue;
    },
  });

  // Error handling
  server.ext('onPreResponse', (request, h) => {
    // If not Boom, continue
    if (!request.response.isBoom) {
      return h.continue;
    }

    // Custom error message
    const responseObj = {
      message: request.response.output.statusCode === 401 ? 'AuthError' : 'ServerError',
      status: request.response.message,
    };

    logger.error(`code: ${request.response.output.statusCode}, message: ${request.response.message}`);
    return h.response(responseObj).code(request.response.output.statusCode);
  });
};

const createServer = async () => {
  const server = Hapi.server({
    port,
    host: '0.0.0.0',
  });

  await server.register([
    hapiBoomDecorators,
  ]);

  setExtensions(server);

  try {
    const setupConf = {
      binPath: `${__dirname}/../bin/rtsp-simple-proxy`,
      confPath: `${__dirname}/../.cam-resources.yml`,
    };
    const proxy = new SimpleProxy(setupConf, logger);
    proxy.run();
    // Initiate routes
    routes.forEach((route) => server.route(route));
    await server.start();
    logger.info(`Server running on ${server.info.uri}`);
  } catch (e) {
    logger.error(e.message);
  }
};

process.on('unhandledRejection', (err) => {
  logger.error(err.message);
  process.exit(1);
});

module.exports = createServer;
