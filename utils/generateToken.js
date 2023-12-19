/* eslint-disable require-jsdoc */
const jwt = require('jsonwebtoken');
require('dotenv').config();

function generateToken(user) {
  const payload = {
    user_id: user.user_id,
  };

  const options = {
    expiresIn: '1h',
  };

  return jwt.sign(payload, process.env.SECRET_KEY, options);
}

module.exports = generateToken;
