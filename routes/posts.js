const express = require('express')
const db = require('../models')
const router = express.Router()
router.use(express.urlencoded({ extended: false }));
const crypt_lib = require('../middleware/cryptolib')
const passport = require('../config/ppConfig');
const isLoggedIn = require('../middleware/isLoggedIn');


router.get('/new', async(req,res)=>{
    if(req.user.user_level >= 3){
        res.render('posts/new', {data:{user: req.user}})
    }else{
        res.redirect('/')
    }
})