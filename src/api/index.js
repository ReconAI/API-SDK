const streamRoutes = require('./streams/routes');
const filesRoutes = require('./files/download');

module.exports = [...streamRoutes, ...filesRoutes];
