const fs = require('fs');
const { safeLoad } = require('js-yaml');

module.exports = {
  allStreams: (request) => {
    const { host } = request.headers;
    // console.log(JSON.stringify(host));
    const base = host.split(':')[0];
    const camResources = safeLoad(fs.readFileSync(`${__dirname}/../../../cam-resources.yml`, 'utf8'));
    const { rtspPort } = camResources.server;
    return Object.keys(camResources.streams).map((streamAlias) => `rtsp://${base}:${rtspPort}/${streamAlias}`);
  },
  getStream: (request, h) => {
    const { logger } = request.server;
    const { streamId } = request.params;
    const streams = request.server.methods.getCamResources().resources;
    const stream = streams.find((s) => s.key === streamId);
    if (!stream) {
      logger.error(`Stream ${stream} is not found`);
      throw h.notFound();
    }

    // TODO return stream chunks
    return stream;
  },
};
