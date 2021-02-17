const express = require('express')
const db = require('../models')
const router = express.Router()
router.use(express.urlencoded({ extended: false }));
const crypt_lib = require('../middleware/cryptolib')
const passport = require('../config/ppConfig');
const isLoggedIn = require('../middleware/isLoggedIn');

//TODO: Add models and CRUD for Privacy and TOS, and info pages (meditation, cacao, etc) (IN PROGRESS)
//TODO: build routes for Privacy, TOS, and info pages
//TODO: test routes for Privacy, TOS, and info pages



router.get('/', (req, res) => {
    res.render('index') 
});

router.get('/privacy', async(req, res)=>{
    res.send('View the privacy policy here')
})

router.get('/terms', async(req, res)=>{
    res.send('View the terms of service here')
})

router.get('/dark_meditation', (req, res)=>{
    res.send('View info about meditation in the dark here...')
})

router.get('/cacao', (req, res)=>{
    res.send('View info about cacao here')
})

module.exports = router