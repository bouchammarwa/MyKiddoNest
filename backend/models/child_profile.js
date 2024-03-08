const { Sequelize, DataTypes } = require('sequelize');
const sequelize = new Sequelize('sqlite::memory:');

const Child = sequelize.define('Child', {
  // Model attributes are defined here
  firstName: {
    type: DataTypes.STRING,
    allowNull: false,
    //hna t9adi tzidi mba3da l pattern
  },
  lastName: {
    type: DataTypes.STRING, // allowNull defaults to true
  },
  dateOfBirth:{
    type: DataTypes.DATE,
    allowNull:false,
  },
  alergies:{
    type: DataTypes.STRING,
  },
  hobbies:{
    type: DataTypes.STRING,
  }
}, // Other model options go here
  );

  module.exports = Child;
// Access the model using sequelize.models.User
console.log(Child === sequelize.models.User); // tr