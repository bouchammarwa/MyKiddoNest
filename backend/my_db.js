const mysql = require('mysql2/promise');

const mysqlPool = mysql.createPool({
  host: 'localhost',
  user:'mykiddonest',
  password:'M_yKiddonest24',
  database: 'database',
});

module.exports = mysqlPool