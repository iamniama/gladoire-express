const express = require('express')
const db = require('../models')
const router = express.Router()
router.use(express.urlencoded({ extended: false }))
//const crypto = require('crypto')
const passport = require('../config/ppConfig')
const isLoggedIn = require('../middleware/isLoggedIn')

router.get(
    '/google',
    passport.authenticate('google', { scope: ['email', 'profile'] })
)

router.get(
    '/google/callback',
    passport.authenticate('google', {
        failureRedirect: 'failure',
        failureFlash: 'Invalid username and/or password',
        successFlash: 'You have logged in'
    }),
    (req, res) => {
        res.redirect('/')
    }
)

router.get('/logout', (req, res) => {
    req.logout()
    //res.send(req.user);
    req.flash('success', 'You have logged out')
    res.redirect('/')
})

router.get('/google/success', (req, res) => {
    res.send(`Success!!!`)
})

router.get('/google/failure', (req, res) => {
    res.send(
        `Something went wrong with authentication....Go back to <a href="http://gladoire.com/"> HOME </a>`
    )
})

module.exports = router
