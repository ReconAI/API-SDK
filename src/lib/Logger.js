const winston = require('winston');

const colorizer = winston.format.colorize();

const Logger = winston.createLogger({
  level: 'info', // todo from config
  format: winston.format.simple(),
  defaultMeta: { service: 'stream-service' },
  transports: [
    //
    // - Write all logs with level `error` and below to `error.log`
    // - Write all logs with level `info` and below to `combined.log`
    //
    /* TODO in future
    new winston.transports.File({ filename: 'error.log', level: 'error' }),
    new winston.transports.File({ filename: 'combined.log' }),
   */
  ],
});

if (process.env.NODE_ENV !== 'production') {
  Logger.add(new winston.transports.Console({
    format: winston.format.combine(
      winston.format.timestamp(),
      winston.format.simple(),
      winston.format.printf((msg) => colorizer.colorize(msg.level, `${msg.timestamp} - ${msg.level}: ${msg.message}`)),
    ),
  }));
}

module.exports = Logger;
