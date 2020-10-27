module.exports = (request) => {
	if (request.headers.authorization === process.env['EDGE_API_KEY']) {
		return true;
	} else {
		throw h.forbidden();
	}
};
