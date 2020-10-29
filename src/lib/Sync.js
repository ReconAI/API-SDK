const pg = require('pg');
const axios = require('axios');
const logger = require('./Logger');

class Sync {
	constructor() {
		const cloudAPI = `${process.env.CLOUD_PORTAL_URL}/relevant-data/import`;

		const pgHost = process.env.EDGE_DB;
		const pgDatabase = process.env.POSTGRES_DB;
		const pgUser = process.env.POSTGRES_USER;
		const pgPassword = process.env.POSTGRES_PASSWORD;
		const syncInterval = process.env.SYNC_INTERVAL;

		const pgUri = `postgres://${pgUser}:${pgPassword}@${pgHost}/${pgDatabase}`;

		this.interval = setInterval(() => {
			pg.connect(pgUri, (err, client, done) => {
				if (err) {
					return logger.error('error fetching client from pool', err);
				}

				return client.query('SELECT * FROM `public`.`RelevantData` WHERE 1=1', [], (err, result) => {
					if (err) {
						return logger.error('error happened during query', err);
					}

					return axios.post(cloudAPI, result, {
						headers: {
							'X-Api-Sdk-Key': process.env.EDGE_API_KEY,
						},
					})
						.then((res) => {
							logger.info(res);

							return done();
						})
						.catch(err => {
							return logger.error('error happened axios request', err);
						});
				});
			});
		}, syncInterval * 1000);
	}
}

module.exports = new Sync();
