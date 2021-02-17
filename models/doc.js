'use strict';
const {
  Model
} = require('sequelize');
module.exports = (sequelize, DataTypes) => {
  class doc extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      // define association here
    }
  };
  doc.init({
    doc_name: DataTypes.STRING,
    doc_url: DataTypes.STRING,
    doc_desc: DataTypes.STRING
  }, {
    sequelize,
    modelName: 'doc',
  });
  return doc;
};