'use strict';
const {
  Model
} = require('sequelize');
module.exports = (sequelize, DataTypes) => {
  class post extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      models.post.belongsTo(models.user)
      models.post.hasMany(models.comment)
    }
  };
  post.init({
    post_title: DataTypes.STRING,
    userId: DataTypes.INTEGER,
    post_note: DataTypes.TEXT,
    post_date: DataTypes.DATE
  }, {
    sequelize,
    modelName: 'post',
  });
  return post;
};