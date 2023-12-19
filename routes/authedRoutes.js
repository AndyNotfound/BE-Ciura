const express = require('express');
const routes = express();
const verifyToken = require('../middleware/auth');

routes.get('/articles', verifyToken, async (req, res) => {
  return res.json(req.user.user_id);
});
module.exports = routes;
