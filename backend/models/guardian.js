const { Sequelize, DataTypes, HasMany } = require('sequelize');
const Child = require('./child_profile');
const sequelize = new Sequelize('sqlite::memory:');

const Guardian = sequelize.define('Guardian', {
  // Model attributes are defined here
  firstName: {
    type: DataTypes.STRING,
    allowNull: false,
  },
  lastName: {
    type: DataTypes.STRING, // allowNull defaults to true
  },
  civil_status:{
    type:DataTypes.STRING,
  },
  guardian_id:{
    type: DataTypes.STRING,
  },
  guardian_password:{
    type: DataTypes.STRING,
    //hna tani ndiro validate
  },
}, // Other model options go here
  );

  module.exports = Guardian;
  HasMany(Child);
// Access the model using sequelize.models.User
console.log(Guardian === sequelize.models.Child); // true