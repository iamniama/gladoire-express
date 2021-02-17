const express = require('express')
const db = require('../models')
const router = express.Router()
router.use(express.urlencoded({ extended: false }));
const crypt_lib = require('../middleware/cryptolib')
const passport = require('../config/ppConfig');
const isLoggedIn = require('../middleware/isLoggedIn');

const redirSite = "https://www.fbi.gov/investigate/cyber"

router.get('/', isLoggedIn, (req, res)=>{
    res.send("Mod info")
})


router.get('/info', isLoggedIn, async(req,res)=>{
    if (req.user.user_level >= 5){
        res.render('mod/infolist', {data:{user: req.user, items:await db.info.findAll()}})
    }
})

router.get('/info/new', isLoggedIn, async(req,res)=>{
    if (req.user.user_level >= 5){
        res.render('mod/newinfo', {data: {user: req.user} })
    }
})

router.post('/info', isLoggedIn, async(req, res)=>{
    if (req.user.user_level >= 5) {
        db.info.create(req.body)
        res.redirect('/mod/info/')
    }
})


router.get('/info/:id', isLoggedIn, async(req, res)=>{
    if (req.user.user_level >= 5) {
        res.render('mod/edit', {data: {user: req.user, item: await db.info.findOne({where:{'id': req.params.id}})}})
    }else{
        res.redirect(redirSite)
    }
})



router.put('/info', isLoggedIn, async(req,res)=>{
    if (req.user.user_level >= 5){
        console.log(req.body)
        db.info.update({info_body: req.body.info_body, info_title: req.body.info_title, info_summary: req.body.info_summary}, { where: {id: req.body.id}})
        res.redirect(`/mod/info/${req.body.id}`)
    }
})


module.exports = router