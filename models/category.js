'use strict';
const {
  Model
} = require('sequelize');
module.exports = (sequelize, DataTypes) => {
  class category extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      models.category.hasMany(models.item)
    }
  };
  category.init({
    cat_name: DataTypes.STRING,
    cat_desc: DataTypes.TEXT
  }, {
    sequelize,
    modelName: 'category',
  });
  return category;
};