/* eslint-disable require-jsdoc */
const mysql = require('mysql2/promise');

const db = mysql.createPool({
  host: 'localhost',
  user: 'root',
  database: 'ciura',
  password: 'SecurePass123!',
  connectionLimit: 10,
  enableKeepAlive: true,
  keepAliveInitialDelay: 0,
});

// query adalah string
// value adalah array query
async function query(query, value) {
  try {
    const [executeQuery] = await db.query(query, value ?? []);
    return executeQuery;
  } catch (error) {
    console.log(error);
  }
}

module.exports = query;
