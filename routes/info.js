const express = require('express')
const db = require('../models')
const router = express.Router()
router.use(express.urlencoded({ extended: false }));
const crypt_lib = require('../middleware/cryptolib')
const passport = require('../config/ppConfig');
const isLoggedIn = require('../middleware/isLoggedIn');

//TODO: Add models and CRUD for Privacy and TOS, and info pages (meditation, cacao, etc)
//TODO: build routes for Privacy, TOS, and info pages
//TODO: test routes for Privacy, TOS, and info pages



router.get('/', (req, res) => {
    res.render('index') 
});

module.exports = router