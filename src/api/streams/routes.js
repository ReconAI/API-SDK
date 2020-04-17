const controller = require('./controller');
const getStreamScheme = require('./schemas/request/getStream');

module.exports = [
  {
    method: 'GET',
    path: '/streams',
    config: {
      description: 'Get all available streams',
      handler: controller.allStreams,
    },
  },
  {
    method: 'GET',
    path: '/streams/{streamId}',
    config: {
      description: 'Get particular stream',
      handler: controller.getStream,
      validate: {
        params: getStreamScheme,
      },
    },
  },
];
