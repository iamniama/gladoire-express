'use strict';
const {
  Model
} = require('sequelize');
module.exports = (sequelize, DataTypes) => {
  class info extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      // define association here
    }
  };
  info.init({
    info_title: DataTypes.STRING,
    info_summary: DataTypes.STRING,
    info_body: DataTypes.TEXT,
    info_delta: DataTypes.TEXT
  }, {
    sequelize,
    modelName: 'info',
  });
  return info;
};