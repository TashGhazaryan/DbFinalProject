const mysql = require('mysql2');

const pool = mysql.createPool({
  host: 'localhost',
  user: 'root',
  database: 'library',
  password: ''
});

module.exports = pool.promise();
