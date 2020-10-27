const controller = require('./controller');
const getStreamScheme = require('./schemas/request/getStream');

const apiKeyCheck = require('../access/apikey');

module.exports = [
  {
    method: 'GET',
    path: '/streams',
    config: {
      description: 'Get all available streams',
      pre: [
        { method: apiKeyCheck, assign: 'access' },
      ],
      handler: controller.allStreams,
    },
  },
  {
    method: 'GET',
    path: '/streams/{streamId}',
    config: {
      description: 'Get particular stream',
      handler: controller.getStream,
      pre: [
        { method: apiKeyCheck, assign: 'access' },
      ],
      validate: {
        params: getStreamScheme,
      },
    },
  },
];
