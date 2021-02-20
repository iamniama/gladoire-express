'use strict';
const {
  Model
} = require('sequelize');
module.exports = (sequelize, DataTypes) => {
  class session_item extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      // define association here
    }
  };
  session_item.init({
    itmId: DataTypes.INTEGER,
    sessionId: DataTypes.INTEGER
  }, {
    sequelize,
    modelName: 'session_item',
  });
  return session_item;
};