module.exports = (request) => {
	if (request.headers.authorization === process.env['x-api-sdk-key']) {
		return true;
	} else {
		throw h.forbidden();
	}
};
