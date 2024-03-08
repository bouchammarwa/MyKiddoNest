const express = require('express')//instance of the framework
const app = express() //instance of express

app.listen(3001/*port*/,() => {
    console.log("server running on port 3001");
} );
const sequelize = require('./db');
const User = require('./models/User');
const Event = require('./models/Event');

// Sync models with the database
sequelize.sync({ force: true }) // Use { force: true } to drop existing tables
  .then(() => {
    console.log('Database synced successfully.');
  })
  .catch((err) => {
    console.error('Error syncing database:', err);
  });