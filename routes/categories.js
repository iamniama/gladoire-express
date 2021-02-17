const express = require('express')
const db = require('../models')
const router = express.Router()
router.use(express.urlencoded({ extended: false }));
const crypt_lib = require('../middleware/cryptolib')
const passport = require('../config/ppConfig');
const isLoggedIn = require('../middleware/isLoggedIn');

//TODO: Should categories be refactored/renamed?  enhancers?  modifiers?
//TODO: Build routes for category/enhancer stuff


router.get('/', (req,res)=>{
    res.send("Get categories info")
})

module.exports = router