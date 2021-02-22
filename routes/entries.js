const express = require('express')
const axios = require('axios')
const db = require('../models')
const router = express.Router()
router.use(express.urlencoded({extended: false}))
const isLoggedIn = require('../middleware/isLoggedIn')
const {Sequelize} = require("sequelize");


router.get('/', isLoggedIn, async (req, res) => {
    //res.send("Get entry info")
    try {
        //let catinfo = await db.category.findAll()
        let sessInfo = await db.session.findAll({
            where: {userId: req.user.id}, include: [
                db.session_item, {model: db.item, include: db.category}]
        })
        //console.log(sessInfo)

        res.render('entries/list', {data: {user: req.user, items: sessInfo}})
    } catch (e) {
        console.log(e.message)
        res.status(400).render('404', {data: {user: req.user}})
    }
})

router.get('/new', isLoggedIn, async (req, res) => {
    try {
        let utime = Math.floor((new Date()).getTime() / 1000)
        let mdata = (await axios.get(`https://api.farmsense.net/v1/moonphases/?d=${utime}`)).data
        let catinfo = await db.category.findAll({
            include: [
                {
                    model: db.item,
                    where: {userId: req.user.id}
                }
            ]
        })
        res.render('entries/new', {data: {user: req.user, cats: catinfo, moon: mdata}})
    } catch (e) {
        console.log(e.message)
        res.status(400).render('404')
    }
})

router.get('/filtered/:filter', isLoggedIn, async(req,res)=>{
    let data = {user: req.user}
    //console.log(parseInt(req.params.filter))
    switch(req.params.filter){
        case "1":
            data.items = await db.session.findAll({
                where: {userId: req.user.id, sess_energypost:{[Sequelize.gt]: Sequelize.col('sess_energypre')}}, include: [
                    db.session_item, {model: db.item, include: db.category}]
            })
            break;
        case "2":
            data.items = await db.session.findAll({
                where: {userId: req.user.id, sess_energypost:{$lt: Sequelize.col('sess_energypre')}}, include: [
                    db.session_item, {model: db.item, include: db.category}]
            })
            break;
        case "3":
            data.items = await db.session.findAll({
                where: {userId: req.user.id, sess_moodpost:{$gt: Sequelize.col('sess_moodpre')}}, include: [
                    db.session_item, {model: db.item, include: db.category}]
            })
            break;
        case "4":
            data.items = await db.session.findAll({
                where: {userId: req.user.id, sess_moodpost:{$lt: Sequelize.col('sess_moodpre')}}, include: [
                    db.session_item, {model: db.item, include: db.category}]
            })
            break;
        default:
            res.redirect('/entries')
    }
    res.render('entries/list', {data})
})

router.post('/', isLoggedIn, async (req, res) => {
    try {
        let newpost = {
            sess_title: req.body.sess_title,
            userId: req.user.id,
            sess_date: req.body.sess_date,
            sess_weather: req.body.sess_weather,
            sess_moon: req.body.sess_moon,
            sess_moodpre: req.body.sess_moodpre,
            sess_moodpost: req.body.sess_moodpost,
            sess_energypre: req.body.sess_energypre,
            sess_energypost: req.body.sess_energypost,
            sess_note: req.body.sess_note,
            sess_duration: req.body.sess_duration
        }

        let newPostID = (await db.session.create(newpost)).id
        req.body.session_items.forEach((item) => {
            console.log(item)
            db.session_item.create({sessionId: newPostID, itemId: item})
        })
        res.redirect('/entries')
    } catch (e) {
        console.log(e.message)
        res.status(400).render('404')
    }
})

router.get('/:id', isLoggedIn, async (req, res) => {
    try {
        let sessInfo = await db.session.findAll({
            where: {userId: req.user.id, id: req.params.id}, include: [
                db.session_item, {model: db.item, include: db.category}]
        })
        console.log(sessInfo[0].sess_note)
        res.render('entries/display', {data: {user: req.user, items: sessInfo}})

    } catch (e) {
        console.log(e.message)
        res.status(400).render('404')
    }
})
module.exports = router