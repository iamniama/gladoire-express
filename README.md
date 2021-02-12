# gladoire-express
Gladoire is a journaling app for meditators and spiritual practitioners

## What It Is - Raw
Gladoire is an Express web application for tracking one's experiences in meditation and other spiritual practices.
The idea started as *'21 Grams'*, a tracker for cacao and cannabis pairings, named primarily for the (in my experience) optimal meditative dose of cacao, but also from a scientist's theory about the weight of the human soul [Wikipedia](https://en.wikipedia.org/wiki/21_grams_experiment) in the early 20th century.
In my spiritual tradition, one's journal became a sort of personal grimoire, but I've never had much use for it.  I lose them, I forget to write in them, and even a good template for Evernote doesn't let me see trends, or compare experiences between different executions of a practice.
That was what 21 Grams was really about...a USEFUL journal of practice, a better grimoire, but since meditation should be a joyful thing, and magick as such isn't much of a thing, let's call it a GLADoire. (rimshot)


## GA Notes 
The technical emphases in this project are
- more complex routes, 
- and a more complex data design (multiple users, multiple access levels, private/not private posts, etc), because these are the things that I had some trouble with in the unit.
- I will also be using at least one external API (to get weather at time of session, and possibly phase of the moon, a lot of people who would dig this app care about that stuff)

### From a design perspective:
Multi-user (with multiple access levels) journal application (posts are private by default, but can be marked for sharing.  depending on time, I may have multiple sharing levels, such as public posts, and posts that can only be seen by authenticated users) with an emphasis on meditation and spiritual practices.
Level 1 users will be able to post, and select from various categories, but will not be able to add category items (cacao, practices, etc).
Level 2 users will have Level 1 access plus the ability to add category items (but not categories!).  If I have time, I would like to do them as category moderators, such that a given Level 2 user might be able to manage cacao, while another could manage cacao AND practices.  That's the goal, but I won't be too unhappy if I have to fall back to all categories.
Level 3 users will have Level 1 and 2 access (all categories either way) plus the ability to moderate/remove posts.
Level 4 users will have all previous rights, plus the ability to grant rights, given time.  This might fall back to level 3 users depending on LoE.
Future state notion: auto-promote users from 1 to 2 based on certain activity level
Future state notion: commenting on non-private posts
 

