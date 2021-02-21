# Gladoire installation

If you *must* run your own Gladoire, instead of using mine and maybe kicking back $7.99 a month for it...

- Fork and clone the repo
- Setup Google OAuth client access (via Google)
    - This process, NGL, is slightly painful...
    - generate a reasonable Privacy Policy and TOS
    - and link them into the site.  honestly, would be easier to adjust the routes for TOS and privacy to send the doc location down instead of storing it in the database
    - you could send the filename down as part of {data}, and have the embed control pick it up from there...
- From the console/bash shell:
    - ```npm i```
    - ```sequelize db:migrate```
    - ```node ./dbInit.js```
- Log in to your Gladoire via Google OAuth
- Optional: Access the database manually, and set the user's user_name to Gladoire Admin
    - Note that this change to the user_name is blocked in the app itself
- Also set that user's user_level to something above 5.
    - This makes your account the admin, and allows that user access to all features (posts, moderation, etc)
    - I set mine to 99, just cos
- Start Gladoiring and leave me with a dry beak...