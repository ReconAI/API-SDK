module.exports = {
  allStreams: (request) => request.server.methods.getCamResources().resources,
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
