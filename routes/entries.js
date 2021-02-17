const express = require('express')
const db = require('../models')
const router = express.Router()
router.use(express.urlencoded({ extended: false }));
const crypt_lib = require('../middleware/cryptolib')
const passport = require('../config/ppConfig');
const isLoggedIn = require('../middleware/isLoggedIn');

//TODO: How do I make enhancers personal to a user, beyond some basic templates?
//TODO: Allow users to make 'template' entries?  with enhancers and practices and such built in?

router.get('/', (req,res)=>{
    res.send("Get entry info")
})

module.exports = router