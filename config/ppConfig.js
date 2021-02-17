

// TODO: Update DB stuff in ppConfig to reflect the new User model
// TODO: Test the auth with the new model before continuing dev

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
          }).save().then((newUser) =>{
            done(null, newUser);
          });
        }
      })
    })
);


module.exports = passport;