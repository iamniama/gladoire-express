const express = require('express')
const db = require('../models')
const router = express.Router()
router.use(express.urlencoded({ extended: false }));
const crypt_lib = require('../middleware/cryptolib')
const passport = require('../config/ppConfig');
const isLoggedIn = require('../middleware/isLoggedIn');

//TODO: How do I make enhancers personal to a user, beyond some basic templates?
//TODO: Allow users to make 'template' entries?  with enhancers and practices and such built in?

router.get('/', isLoggedIn, async(req,res)=>{
    //res.send("Get entry info")
    try{
        let sessInfo = await db.session.findAll({where: {userId: req.user.id}, include:[
                db.item, db.category, db.session_item
            ]})
        console.log(sessInfo)
        res.render('entries/list', {data:{user: req.user, items: sessInfo}})
    }catch(e){
        console.log(e.message)
        res.status(400).render('404')
    }
})

router.get('/new', async(req, res)=>{
    
    let catinfo = await db.category.findAll({include:[
            {model: db.item,
                where: {userId: req.user.id}}
        ]})
    res.render('entries/new', {data: {user: req.user, cats: catinfo}})
})

module.exports = router