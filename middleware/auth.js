/* eslint-disable require-jsdoc */
const jwt = require('jsonwebtoken');
require('dotenv').config();

function verifyToken(req, res, next) {
  const token = req.header('Authorization')?.split(' ')[1];

  if (!token) {
    return res.status(401).json('Unauthorized Access: Missing token');
  }

  try {
    const decoded = jwt.verify(token, process.env.SECRET_KEY);
    req.user = decoded; // Attach user info to request object
    next(); // Proceed to next middleware or route handler
  } catch (error) {
    return res.status(401).json('Unauthorized Access: Invalid token');
  }
}

module.exports = verifyToken;
