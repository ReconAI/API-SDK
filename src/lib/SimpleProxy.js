const { spawn } = require('child_process');

class SimpleProxy {
  /**
   *
   * @param {Object} opts
   * @param {String} opts.binPath -required
   * @param {String} opts.confPath -required
   * @param logger
   */
  constructor(opts, logger) {
    this.opts = opts;
    this.logger = logger;
    this.initSpawnOptions();
  }

  initSpawnOptions() {
    if (!this.opts.binPath) {
      throw new Error('binPath is required');
    }
    if (!this.opts.confPath) {
      throw new Error('confPath is required');
    }
  }

  run() {
    const { binPath, confPath } = this.opts;
    const stream = spawn(binPath, [confPath]);
    stream.stdout.on('data', (data) => {
      this.logger.info(`stdout data ${data.toString()}`);
    });
    stream.stderr.on('data', (data) => {
      this.logger.info(`stderr data ${data.toString()}`);
    });
    stream.on('exit', (code) => {
      if (code === 1) {
        this.logger.error('SimpleProxy stream exited process');
        stream.kill();
      }
      return null;
    });
  }
}

module.exports = SimpleProxy;
