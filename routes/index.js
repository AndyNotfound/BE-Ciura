const express = require('express');
const app = express();

const authedRoutes = require('../routes/authedRoutes');
const publicRoutes = require('../routes/publicRoutes');

app.use('/api/authed/', authedRoutes);
app.use('/api/', publicRoutes);

module.exports = app;
