require('dotenv').config();
const fs = require('fs');
const { safeLoad } = require('js-yaml');
const Hapi = require('@hapi/hapi');
const hapiBoomDecorators = require('hapi-boom-decorators');

const logger = require('./lib/Logger');
const Live555ProxyServer = require('./lib/Live555ProxyServer');
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
    const camResources = safeLoad(fs.readFileSync('./cam-resources.yaml', 'utf8'));
    // Init proxy for cameras
    const proxy = new Live555ProxyServer({
      addresses: camResources.resources.map((r) => r.url),
      binPath: './bin/live555ProxyServer',
    }, logger);
    server.method('getProxies', () => proxy.proxiedRTSPs, {});
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
