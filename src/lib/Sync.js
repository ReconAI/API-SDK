const axios = require('axios');
const {Client} = require('pg');
const logger = require('./Logger');

const pgHost = process.env.EDGE_DB;
const pgDatabase = process.env.POSTGRES_DB;
const pgUser = process.env.POSTGRES_USER;
const pgPassword = process.env.POSTGRES_PASSWORD;
const syncInterval = process.env.SYNC_INTERVAL;

const connectionString = `postgres://${pgUser}:${pgPassword}@${pgHost}/${pgDatabase}`;

class Sync {
	constructor() {
		const cloudAPI = `${process.env.CLOUD_PORTAL_URL}/relevant-data/import`;

		this.interval = setInterval(async () => {
			const client = new Client({
				connectionString,
			});

			try {
				await client.connect();

				return client.query('SELECT * FROM "public"."RelevantData";', [], (err, result) => {
					if (err) {
						logger.error('error happened during query', err);
						return client.end();
					}

					return axios.post(cloudAPI, result.rows, {
						headers: {
							'X-Api-Sdk-Key': process.env.EDGE_API_KEY,
						},
					})
						.then((res) => {
							return client.end();
						})
						.catch(err => {
							logger.error('error happened axios request', err);
							return client.end();
						});
				});
			} catch (err) {
				logger.error('error fetching client from pool', err);
				return client.end();
			}
		}, syncInterval * 1000);
	}
}

module.exports = new Sync();
