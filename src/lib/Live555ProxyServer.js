const { spawn } = require('child_process');

class Live555ProxyServer {
  /**
   *
   * @param {Object} opts
   * @param {Array<String>} opts.addresses -required
   * @param {String} opts.binPath -required
   * @param {Object} opts.credentials
   * @param {String} opts.credentials.username
   * @param {String} opts.credentials.password
   * @param logger
   */
  constructor(opts, logger) {
    this.opts = opts;
    this.logger = logger;
    this.spawnOptions = [];
    this.initSpawnOptions();
    this.run();
    this.proxiedRTSPs = [];
  }

  initSpawnOptions() {
    // TODO add more options after
    if (!this.opts.binPath) {
      throw new Error('binPath is required');
    }
    if (!this.opts.addresses || !this.opts.addresses.length) {
      throw new Error('addresses is required');
    }
    // Add addresses for proxying
    this.spawnOptions = this.spawnOptions.concat(this.opts.addresses);

    if (this.opts.credentials) {
      // Set auth credentials
      this.spawnOptions.push('-u');
      this.spawnOptions.push(`${this.opts.credentials.username}`);
      this.spawnOptions.push(`${this.opts.credentials.password}`);
    }
  }

  run() {
    const self = this;

    const stream = spawn(this.opts.binPath, this.spawnOptions, {
      shell: true,
    });
    stream.stdout.on('data', (data) => {
      this.logger.info(`stdout data ${data.toString()}`);
      self.getAddressesFromOutput(data.toString());
    });
    stream.stderr.on('data', (data) => {
      this.logger.info(`stderr data ${data.toString()}`);
      self.getAddressesFromOutput(data.toString());
    });
    stream.on('exit', (code) => {
      if (code === 1) {
        this.logger.error('Live555ProxyServer stream exited process');
        stream.kill();
      }
      return null;
    });
  }

  getAddressesFromOutput(str) {
    // Finding address values from live555ProxySrrver output
    const addresses = str.match(/rtsp.*/g);
    // defining proxy addresses
    if (!addresses) {
      return;
    }
    this.proxiedRTSPs = this.proxiedRTSPs.concat(addresses.map((addr) => addr.split('=')[1]));
  }
}

module.exports = Live555ProxyServer;
