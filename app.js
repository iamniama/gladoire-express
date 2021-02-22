const isLoggedIn = require('./middleware/isLoggedIn');
const session = require('express-session');
const passport = require('./config/ppConfig');
const flash = require('connect-flash');
// 1 - environment

require('dotenv').config();

// 2 - imports
const express = require('express');
//const axios = require('axios');
const ejsLayouts = require('express-ejs-layouts');
const methodOverride = require('method-override');

// 3 - App set up
const app = express();
app.set('view engine', 'ejs');

// 4 - App Middleware (app.use)

app.use(ejsLayouts);
app.use(express.urlencoded({ extended: false }));
app.use(methodOverride('_method'));
app.use(express.static(__dirname + '/public/'));
app.use(require('morgan')('dev'));
const db=require('./models')
//const path = require("ejs");
const path = require('path');
app.use(session({
    secret: process.env.SESSION_SECRET,
    resave: false,
    saveUninitialized: true
  }));
  app.use(passport.initialize());
  app.use(passport.session());
  app.use(flash());

// 5 - Routes (controllers)

app.use((req, res, next) => {
    // before every route, attach the flash messages and current user to res.locals
    res.locals.alerts = req.flash();
    res.locals.currentUser = req.user;
    next();
  });

// we pass req.user down into the template via the data object, so that we can do use it for access control

app.get('/', async(req, res)=>{
    res.render('index', {data:{user: req.user, items: await db.post.findAll({include:[{model: db.comment, include:[db.user]}]})}})
})

app.get('/privacy', async(req, res)=>{
    res.render('info/index', {data:{user: req.user, item: await db.doc.findOne({where:{doc_name: 'Privacy Policy'}})}})
})

app.get('/tos', async(req, res)=>{
    res.render('info/index', {data:{user: req.user, item: await db.doc.findOne({where:{doc_name: 'Terms of Service'}})}})
})

app.get('/terms', (req, res)=>{
    res.redirect('/tos')
})




//app.use('/', require('./routes/info'))
app.use('/auth', require('./routes/auth'))
app.use('/categories', require('./routes/categories'))
app.use('/entries', require('./routes/entries'))
app.use('/info', require('./routes/info'))
app.use('/mod', require('./routes/mod'))
app.use('/posts', require('./routes/posts'))



app.get('*', function(req, res){
    //res.render('404', {data: {user: req.user}});
    res.redirect('/')
});




const PORT = process.env.PORT || 8000;
app.listen(PORT, () => {
    console.log(`Server listening on PORT: ${PORT}`);
});