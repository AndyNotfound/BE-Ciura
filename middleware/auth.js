/* eslint-disable require-jsdoc */
const jwt = require('jsonwebtoken');
const SECRET_KEY = 'usePalaBapakKau';

function verifyToken(req, res, next) {
  const token = req.header('Authorization')?.split(' ')[1];

  console.log('token: ' + token);

  if (!token) {
    return res.status(401).json('Unauthorized Access: Missing token');
  }

  try {
    const decoded = jwt.verify(token, SECRET_KEY); // Verify token signature
    console.log('decoded: ');
    console.log(decoded);
    req.user = decoded; // Attach user info to request object
    next(); // Proceed to next middleware or route handler
  } catch (error) {
    return res.status(401).json('Unauthorized Access: Invalid token');
  }
}

module.exports = verifyToken;
