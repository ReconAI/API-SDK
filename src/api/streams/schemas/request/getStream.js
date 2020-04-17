const joi = require('@hapi/joi');

module.exports = joi.object().keys({
  streamId: joi.string().required(),
});
