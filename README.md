# The Podcast Rec

## README

### Overview
- This app came about due to the frustrations of a group of friends, who constantly recommended new podcasts to each other, and then all promptly forgot because they were not recording them anywhere! Enter The Podcast Rec, so you'll never be without something to listen to again!
- The Podcast Rec is a full stack CRUD application, created to store, create, share and display podcast recommendations for registered users.
- The app was developed and tested for use in Google Chrome Version 90.0.4430.93
- App users are required to log in or register before being able to sumbit recommendation podcast recommendations or update any show information.
- Tech wise: the app uses primarily Ruby, Sql, HTML and CSS and has been created on the Sinatra Framework.
- The app has been optimized for use on desktop, iPad and iPhone.
- Instructions are quite simple: 
  1. Create your account to recommend a new show
  2. Log in to your account
  3. View the current podcast information
  4. Submit your own recommendation via the Recommend button in the top right hand corner.
  
- Find The Podcast Rec via Heroku https://pure-oasis-44569.herokuapp.com/podcasts

<!-- A readme.md file with explanations of the technologies used, the approach taken, installation instructions, unsolved problems, etc. -->

## Technologies used
- Ruby
- Sql
- Sinatra Framework
- Gems
- HTML
- CSS
- JavaScript for DOM manipulation
- Database table exist for Podcast content, Users and Likes. Currently the Likes table can receive information however the app is not yet displaying this information (in the form of likes per show), this will be included in a future release.

## Background
- This project brief called for a full stack CRUD application, created to store, create, share and display podcast information to registered users.
- Users wishing to submit and update recommendations are required to register and sign in to the app.
- All app information (user and podcast details) are housed in a related database.
- Ruby and Sql have been used for all CRUD actions via RESTFUL routes.
- The app is optimised for use on desktop, iPhone and iPad.
- Podcast information can be submitted to the database and displayed in the front-end.
- At this stage Likes can be added to the database for each show, but not yet displayed in the UI (this to be added in later iteration)

## Approach
- This

## Design
- Figma was used for the UI wireframes and initial visual design, please see the files via this GitHub Repo or via this Cloudinary link:
https://res.cloudinary.com/shell-shell/image/upload/v1623976409/Wireframes_zx8w52.png
- Draw.io was used for the relation entities. The diagram can be viewed either in the GitHub Repo or via this Cloudinary link: 
https://res.cloudinary.com/shell-shell/image/upload/v1623976977/Podcast-Rec-DB-ER-diagram_yisiyi.png

## Future updates
- User profile pages to come, including what recommedations they have submitted or liked (such as user history)
- User to be able to to save a recommendation to their profile
- Catologue of shows to be searchable
- Filtering of show according to genre
- A like total for each show to be fully functional.

## Bugs
LIKE TOTAL NOT YET SHOWING

## Screenshot of interface
The Podcast Rec homepage interface can be seen in the GitHub Repo or via this Cloudinary link: 
https://res.cloudinary.com/shell-shell/image/upload/v1623976397/The_Podcast_Rec_home_page_vgcarm.png