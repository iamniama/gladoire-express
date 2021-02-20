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
      models.user.hasMany(models.session)
      models.user.hasMany(models.item)
      models.user.hasMany(models.post)
      models.user.hasMany(models.comment)
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