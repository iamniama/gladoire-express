'use strict';
const {
  Model
} = require('sequelize');
module.exports = (sequelize, DataTypes) => {
  class comment extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      models.comment.belongsTo(models.post)
      models.comment.belongsTo(models.user)
    }
  };
  comment.init({
    userId: DataTypes.INTEGER,
    cmnt_text: DataTypes.TEXT,
    cmnt_date: DataTypes.DATE,
    postId: DataTypes.INTEGER
  }, {
    sequelize,
    modelName: 'comment',
  });
  return comment;
};