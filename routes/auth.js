const express = require('express')
const db = require('../models')
const router = express.Router()
router.use(express.urlencoded({ extended: false }));
const crypt_lib = require('../middleware/cryptolib')
const passport = require('../config/ppConfig');
const isLoggedIn = require('../middleware/isLoggedIn');


router.get('/login', (req, res)=>{
    res.render('auth/login')
})


router.post('/login', passport.authenticate('local', {
    successRedirect: '/',
    failureRedirect: '/auth/login',
    failureFlash: 'Invalid username and/or password',
    successFlash: 'Welcome to Gladoire'
  }));

  router.get('/logout', (req, res) => {
    req.logout();
    // FLASH
    req.flash('success', 'You have been logged out of Gladoire...we miss you already!');
    res.redirect('/');
  });

/*
router.post('/login', async(req, res)=>{
    console.log(`logon attempt from ${req.body.email} with password password`)
    let acct = await db.user.findOne({where:{email: req.body.email}})
    console.log(`Salt for user ${acct.name}: ${acct.salt}`)
    if (acct.validPassword(req.body.password)){
        res.redirect('/user/list')
    }else {
        res.status(400).render('404')
    }
})


router.get('/list', isLoggedIn, async (req, res) => {
    res.render('user/list', {data: await db.user.findAll()});
  });
  /*
router.get('/list', async(req, res)=>{
    res.render('user/list', {data: await db.user.findAll()})
})

router.get('/new', (req, res)=>{
    res.render('user/new')
})

router.post('/', async(req, res)=>{
    let crptcrap = setSaltAndPassword(req.body.password)
    const newUser = {
        name: req.body.name,
        password: crptcrap.e_pass,
        salt: crptcrap.salt,
        email: req.body.email
    }
    await db.user.create(newUser)
    res.redirect('/user/list')
})
*/

module.exports = router