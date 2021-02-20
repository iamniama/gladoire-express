'use strict';
const {
  Model
} = require('sequelize');
module.exports = (sequelize, DataTypes) => {
  class session extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      models.session.belongsTo(models.user)
      models.session.belongsToMany(models.item, {through: "session_item"})
    }
  };
  session.init({
    sess_title: DataTypes.STRING,
    userId: DataTypes.INTEGER,
    sess_date: DataTypes.DATE,
    sess_weather: DataTypes.TEXT,
    sess_moon: DataTypes.STRING,
    sess_moodpre: DataTypes.INTEGER,
    sess_moodpost: DataTypes.INTEGER,
    sess_energypre: DataTypes.INTEGER,
    sess_energypost: DataTypes.INTEGER,
    sess_note: DataTypes.TEXT,
    sess_shared: DataTypes.INTEGER,
    sess_public: DataTypes.INTEGER,
    sess_struck: DataTypes.INTEGER
  }, {
    sequelize,
    modelName: 'session',
  });
  return session;
};