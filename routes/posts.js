const express = require('express')
const db = require('../models')
const router = express.Router()
router.use(express.urlencoded({ extended: false }));
const crypt_lib = require('../middleware/cryptolib')
const passport = require('../config/ppConfig');
const isLoggedIn = require('../middleware/isLoggedIn');


router.get('/new', isLoggedIn, async(req,res)=>{
    try {
        if (req.user.user_level >= 3) {
            res.render('posts/new', {data: {user: req.user}})
        } else {
            res.redirect('/')
        }
    }catch(e){
        console.log(e.message)
        res.status(400).render('404')
    }
})

router.post('/comment', isLoggedIn, async(req,res)=>{
    try {
        console.log(`POSTID: ${req.body.postid}`)
        await db.comment.create({
            postId: req.body.postid,
            userId: req.user.id,
            cmnt_text: req.body.cmnt_text,
            cmnt_date: new Date()
        })
        res.redirect('/')
    }catch(e){
        console.log(e.message)
        res.status(400).render('404')
    }
})

router.get('/list', isLoggedIn, async(req,res)=>{
    try {
        if(req.user.user_level >= 5) {
            res.render('posts/list', {data: {user: req.user, items: await db.post.findAll()}})
        }else{
            res.redirect('/')
        }
    }catch(e){
        console.log(e.message)
        res.status(400).render('404')
    }
})

router.post('/', isLoggedIn, async(req,res)=>{
    try {
        if (req.user.user_level >= 5) {
            await db.post.create({
                userId: req.user.id,
                post_title: req.body.post_title,
                post_note: req.body.post_note,
                post_date: new Date()
            })
            res.redirect('posts/list')
        } else {
            res.redirect('/')
        }
    }catch(e){
        console.log(e.message)
        res.status(400).render('404')
    }
})

router.get('/:id', isLoggedIn, async(req,res)=> {
    try {
        res.render('posts/edit', {data: {user: req.user, items: await db.post.findOne({where: {id: req.params.id}})}})
    }catch(e){
        console.log(e.message)
        res.status(400).render('404')
    }
})


router.delete('/comment', isLoggedIn, async(req,res)=>{
    try {
        if (req.user.user_level >= 5) {
            db.comment.destroy({where: {id: req.body.commentid}})
            res.redirect('/')
        } else {
            res.redirect('/')
        }
    }catch(e){
        console.log(e.message)
        res.status(400).render('404')
    }
})




module.exports = router