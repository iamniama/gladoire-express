'use strict';
module.exports = {
  up: async (queryInterface, Sequelize) => {
    await queryInterface.createTable('sessions', {
      id: {
        allowNull: false,
        autoIncrement: true,
        primaryKey: true,
        type: Sequelize.INTEGER
      },
      sess_title: {
        type: Sequelize.STRING
      },
      userId: {
        type: Sequelize.INTEGER
      },
      sess_date: {
        type: Sequelize.DATE
      },
      sess_weather: {
        type: Sequelize.TEXT
      },
      sess_moon: {
        type: Sequelize.STRING
      },
      sess_moodpre: {
        type: Sequelize.INTEGER
      },
      sess_moodpost: {
        type: Sequelize.INTEGER
      },
      sess_energypre: {
        type: Sequelize.INTEGER
      },
      sess_energypost: {
        type: Sequelize.INTEGER
      },
      sess_note: {
        type: Sequelize.TEXT
      },
      sess_shared: {
        type: Sequelize.INTEGER
      },
      sess_public: {
        type: Sequelize.INTEGER
      },
      sess_duration: {
        type: Sequelize.INTEGER
      },
      sess_struck: {
        type: Sequelize.INTEGER
      },
      createdAt: {
        allowNull: false,
        type: Sequelize.DATE
      },
      updatedAt: {
        allowNull: false,
        type: Sequelize.DATE
      }
    });
  },
  down: async (queryInterface, Sequelize) => {
    await queryInterface.dropTable('sessions');
  }
};