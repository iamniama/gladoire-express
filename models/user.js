'use strict';
const {
  Model
} = require('sequelize');
module.exports = (sequelize, DataTypes) => {
  class user extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      // define association here
    }
  };
  user.init({
    user_email: DataTypes.STRING,
    user_name: DataTypes.STRING,
    googleId: DataTypes.STRING,
    user_town: DataTypes.STRING,
    user_bio: DataTypes.TEXT,
    user_level: DataTypes.INTEGER
  }, {
    sequelize,
    modelName: 'user',
  });
  return user;
};