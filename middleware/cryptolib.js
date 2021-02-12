const crypto = require('crypto')

const generateSalt = function() {
    return crypto.randomBytes(16).toString('base64')
  }

const encryptPassword = function(plainText, salt) {
    return crypto
      .createHash('RSA-SHA256')
      .update(plainText)
      .update(salt)
      .digest('hex')
  }

const setSaltAndPassword = (password) => {
    salt = generateSalt()
    return ({e_pass: encryptPassword(password, salt), salt: salt})
}
const validatePassword = (enteredPassword, user) => {
    console.log(`attempting to verify ${encryptPassword} against ${user.name}`)
    return (encryptPassword(enteredPassword, user.salt) === user.password)
}

module.exports = {generateSalt, encryptPassword, setSaltAndPassword, validatePassword}