const express = require('express')
const db = require('../models')
const router = express.Router()
router.use(express.urlencoded({ extended: false }));
const crypt_lib = require('../middleware/cryptolib')
const passport = require('../config/ppConfig');
const isLoggedIn = require('../middleware/isLoggedIn');


router.get('/', async(req,res)=>{

    let catinfo = await db.category.findAll({include:[
            {model: db.item,
                where: {userId: req.user.id}}
        ]})
    //console.log(catinfo)
    //res.send("Get categories info")
    res.render('categories/list', {data:{user: req.user, items: catinfo}})
})

router.get('/new', async(req, res)=>{
    res.render('categories/new', {data:{user: req.user, cats: await db.category.findAll()}})
})

router.get('/:id', async(req,res)=>{
    res.render('categories/edit', {data:{user: req.user, item: await db.item.findOne({where: {id: req.params.id, userId: req.user.id}})}})
})

router.put('/', async(req,res)=>{
    console.log("PUT method called")

    try{
        await db.item.update({
            itm_name: req.body.itm_name,
            itm_desc: req.body.itm_desc,
            itm_notes: req.body.itm_notes
        }, {returning: true, where: {id: req.body.id, userId: req.user.id}})
        res.redirect(`/categories/${req.body.id}`)
    }catch(e){
        console.log(e.message)
        res.status(400).render('404')
    }

})

router.post('/', async(req,res)=>{
    await db.item.create({categoryId: req.body.categoryId, userId: req.user.id, itm_name:req.body.itm_name,
    itm_desc: req.body.itm_desc, itm_notes: req.body.itm_notes})
    res.redirect('/categories')
})

router.delete('/', async(req,res)=>{
    await db.item.destroy({where: {id: req.body.id, userId: req.body.userId}})
    res.redirect('/categories/')
})

module.exports = router