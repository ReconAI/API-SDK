const createServer = require('./src/server');

createServer();

// maybe for future
// const NodeMediaServer = require('node-media-server');
//
// const config = {
//   logType: 3, // 3 - Log everything (debug)
//   rtmp: {
//     port: 1935,
//     chunk_size: 60000,
//     gop_cache: true,
//     ping: 60,
//     ping_timeout: 30
//   },
//   // http: {
//   //   port: 8000,
//   //   allow_origin: '*'
//   // },
//   relay: {
//     ffmpeg: '/usr/bin/ffmpeg',
//     tasks: [
//       {
//         app: 'cctv',
//         mode: 'static',
//         edge: 'rtsp://46.216.11.140:554',
//         name: 'test',
//         rtsp_transport : 'tcp', // ['udp', 'tcp', 'udp_multicast', 'http']
//       }
//     ]
//   }
// };
//
// var nms = new NodeMediaServer(config)
// nms.run();
