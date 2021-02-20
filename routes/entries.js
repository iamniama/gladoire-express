const express = require('express')
const db = require('../models')
const router = express.Router()
router.use(express.urlencoded({ extended: false }));
const crypt_lib = require('../middleware/cryptolib')
const passport = require('../config/ppConfig');
const isLoggedIn = require('../middleware/isLoggedIn');

//TODO: fix the session_item model so it includes the category to make that query easier....
//TODO: delete the model and its migration, and the table, and then recreate the model
//TODO: and add the associations to the session and category models

router.get('/', isLoggedIn, async(req,res)=>{
    //res.send("Get entry info")
    try{
        let sessInfo = await db.session.findAll({where: {userId: req.user.id}, include:[
            db.session_item, {model: db.item, include:{model: db.category}}
            ]})
        console.log(sessInfo.items)
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

router.post('/', isLoggedIn, async(req,res)=>{
    let newpost = {
        sess_title: req.body.sess_title,
        userId: req.user.id,
        sess_date: req.body.sess_date,
        sess_moodpre: req.body.sess_moodpre,
        sess_moodpost: req.body.sess_moodpost,
        sess_energypre: req.body.sess_energypre,
        sess_energypost: req.body.sess_energypost,
        sess_note: req.body.sess_note,
        sess_duration: req.body.sess_duration
    }
    if (req.body.sess_shared){
        newpost.sess_shared = req.body.sess_shared
    }
    if (req.body.sess_public){
        newpost.sess_public = req.body.sess_public
    }
    let newPostID = (await db.session.create(newpost)).id
    req.body.session_items.forEach((item)=>{
        console.log(item)
        db.session_item.create({sessionId: newPostID, itemId: item})
    })
    res.redirect('/sessions')
})

module.exports = router