const path = require('path');
const fs = require('fs');
const mime = require('mime');
const { dirname } = sails.config.files;

module.exports = (req, res) => {
	let filename = req.param('filename', '').replace(/\/|(%2F)/, '');

	if (_.isUndefined(filename) || _.isNull(filename)) {filename = '';}

	try {
		let filePath = path.join(`${dirname}/`, filename);

		if (fs.existsSync(filePath) && fs.lstatSync(filePath).isFile()) {
			try {
				var stat = fs.statSync(filePath);

				res.writeHead(200, {
					'Content-Type': mime.getType(filePath),
					'Content-Length': stat.size
				});

				var readStream = fs.createReadStream(filePath);
				// We replaced all the event handlers with a simple call to readStream.pipe()
				return readStream.pipe(res);
			} catch (err) {
				return res.status(501).send(err) && console.error(err);
			}
		} else {
			return res.status(404).send({message: 'File not found!'});
		}
	} catch (err) {
		return res.status(500).send(err) && console.error(err);
	}
};
