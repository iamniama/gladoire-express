'use strict';
const {
  Model
} = require('sequelize');
module.exports = (sequelize, DataTypes) => {
  class item extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      models.item.belongsTo(models.category)
      models.item.belongsTo(models.user)
      models.item.belongsToMany(models.session, {through: "session_item"})
    }
  };
  item.init({
    categoryId: DataTypes.INTEGER,
    userId: DataTypes.INTEGER,
    itm_name: DataTypes.STRING,
    itm_desc: DataTypes.TEXT,
    itm_notes: DataTypes.TEXT
  }, {
    sequelize,
    modelName: 'item',
  });
  return item;
};