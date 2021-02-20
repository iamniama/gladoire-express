const express = require('express')
const db = require('../models')
const router = express.Router()
router.use(express.urlencoded({ extended: false }));
const crypt_lib = require('../middleware/cryptolib')
const passport = require('../config/ppConfig');
const isLoggedIn = require('../middleware/isLoggedIn');

const redirSite = "https://www.fbi.gov/investigate/cyber"

router.get('/', isLoggedIn, (req, res)=>{
    if (req.user.user_level >= 5){
        res.send("Mod info")
    }else {
        req.flash('error', 'You do not have moderator access')
        res.redirect('/')
    }
})


router.get('/info', isLoggedIn, async(req,res)=>{
    if (req.user.user_level >= 5){
        res.render('mod/infolist', {data:{user: req.user, items:await db.doc.findAll()}})
    }else {
        req.flash('error', 'You do not have moderator access')
        res.redirect('/')
    }
})

router.get('/info/new', isLoggedIn, async(req,res)=>{
    if (req.user.user_level >= 5){
        res.render('mod/newinfo', {data: {user: req.user} })
    }else {
        req.flash('error', 'You do not have moderator access')
        res.redirect('/')
    }
})

router.post('/info', isLoggedIn, async(req, res)=>{
    if (req.user.user_level >= 5) {
        db.doc.create(req.body)
        res.redirect('/mod/info/')
    }else {
        req.flash('error', 'You do not have moderator access')
        res.redirect('/')
    }
})


router.get('/info/:id', isLoggedIn, async(req, res)=>{
    if (req.user.user_level >= 5) {
        res.render('mod/edit', {data: {user: req.user, item: await db.doc.findOne({where:{'id': req.params.id}})}})
    }else {
        req.flash('error', 'You do not have moderator access')
        res.redirect('/')
    }
})



router.put('/info', isLoggedIn, async(req,res)=>{
    if (req.user.user_level >= 5){
        console.log(req.body)
        db.doc.update({doc_name: req.body.doc_name, doc_url: req.body.doc_url, doc_desc: req.body.doc_desc}, { where: {id: req.body.id}})
        res.redirect(`/mod/info/${req.body.id}`)
    }else {
        req.flash('error', 'You do not have moderator access')
        res.redirect('/')
    }
})


module.exports = router