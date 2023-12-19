/* eslint-disable require-jsdoc */
const jwt = require('jsonwebtoken');

const SECRET_KEY = 'usePalaBapakKau';

function generateToken(user) {
  const payload = {
    user_id: user.user_id,
  };

  const options = {
    expiresIn: '1h',
  };

  return jwt.sign(payload, SECRET_KEY, options);
}

module.exports = generateToken;
