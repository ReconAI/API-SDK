const fs = require('fs');
const mime = require('mime');
const _ = require('lodash');
const { Readable } = require('stream');

const apiKeyCheck = require('../access/apikey');

module.exports = [
	{
		method: 'GET',
		path: '/files',
		config: {
			description: 'Get all available streams',
			pre: [
				{ method: apiKeyCheck },
			],
			handler: (request, h) => {
				const filename = (request.query.filename || '');

				if (_.isUndefined(filename) || _.isNull(filename)) {
					throw h.notFound();
				}

				try {
					const filePath = filename;

					if (fs.existsSync(filePath) && fs.lstatSync(filePath).isFile()) {
						try {
							const stat = fs.statSync(filePath);
							const stream = fs.createReadStream(filePath);
							const streamData = new Readable().wrap(stream);

							return h.response(streamData)
								.header('Content-Type', mime.getType(filePath))
								.header('Content-Length', stat.size);
						} catch (err) {
							throw h.badRequest() && console.error(err);
						}
					} else {
						throw h.notFound();
					}
				} catch (err) {
					throw h.badRequest() && console.error(err);
				}
			}
		}
	}
];
