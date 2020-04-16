require('dotenv').config();
const Hapi = require('@hapi/hapi');

const port = process.env.PORT || 3000;

const init = async () => {
  const server = Hapi.server({
    port,
    host: 'localhost',
  });

  server.route({
    method: 'GET',
    path: '/',
    handler: (request, h) => {
      console.log('in  root handler');
      return 'Hello World!';
    },
  });

  await server.start();
  console.log('Server running on %s', server.info.uri);
};

process.on('unhandledRejection', (err) => {
  console.log(err);
  process.exit(1);
});

init();
