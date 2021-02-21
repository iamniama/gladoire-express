



require('dotenv').config();
const db=require('../models')
const passport = require('passport');
let GoogleStrategy = require( 'passport-google-oauth2' ).Strategy;


passport.serializeUser((user, done) => {
  done(null, user.id);
});

passport.deserializeUser((id, done) => {
  db.user.findByPk(id).then(user => {
    done(null, user);
  });
});

passport.use(
    new GoogleStrategy({
      clientID: process.env.GOOGLE_CLIENT_ID,
      clientSecret: process.env.GOOGLE_CLIENT_SECRET,
      callbackURL: 'http://localhost:3000/auth/google/callback'
    }, (accessToken, refreshToken, profile, done) => {
      // passport callback function
      //check if user already exists in our db with the given profile ID
      db.user.findOne({where:{googleId: profile.id}}).then((currentUser)=>{
        if(currentUser){
          //if we already have a record with the given profile ID
          done(null, currentUser);
        } else{
          //if not, create a new user
          new db.user({
            googleId: profile.id,
            user_level: 0,
            user_email: profile.email,
            user_name: profile.displayName,
          }).save().then(async(newUser) =>{
                await db.item.bulkCreate(
                   [
                        {userId: newUser.id, categoryId: 3, itm_name: 'sitting meditation', itm_desc: 'seated meditation'},
                        {userId: newUser.id, categoryId: 3, itm_name: 'dark meditation', itm_desc: 'seated meditation in darkness or blindfolded'},
                        {userId: newUser.id, categoryId: 3, itm_name: 'walking meditation', itm_desc: 'kinhin or other walking meditation'},
                        {userId: newUser.id, categoryId: 3, itm_name: 'yoga', itm_desc: 'one or more yoga poses, use the notes field for more details'},
                        {userId: newUser.id, categoryId: 4, itm_name: 'Calm Whale 3rd Eye', itm_desc: 'recording by Calm Whale', itm_notes:"https://www.youtube.com/watch?v=0Oa_YtnXCVg&t=2825s"},
                        {userId: newUser.id, categoryId: 5, itm_name: 'frankincense', itm_desc: 'a traditional scent for meditation and ritual'},
                        {userId: newUser.id, categoryId: 6, itm_name: 'Sneha Sacred Cacao', itm_desc: 'Guatemalan cacao produced by mayan descendants with traditional methods'},
                        {userId: newUser.id, categoryId: 6, itm_name: 'PURA Gelato', itm_desc: '50/50 hybrid in a vape cartridge'},

                    ]
                )
            done(null, newUser);
          });
        }
      })
    })
);


module.exports = passport;