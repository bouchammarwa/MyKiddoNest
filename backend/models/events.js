const { Sequelize } = require("sequelize");

const Event = sequelize.define('Event', {
    eventName: {
      type: DataTypes.STRING,
      allowNull: false,
    },
  });
  
  // Define association
  Event.hasMany(User); // Event has many Users