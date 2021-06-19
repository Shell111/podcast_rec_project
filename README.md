# The Podcast Rec

## README

### Overview
- This app came about due to the frustrations of a group of friends who constantly recommended new podcasts to each other, and then all promptly forgot because they were not recording them anywhere! Enter The Podcast Rec, so you'll never be without something to listen to again.
- The Podcast Rec is a full stack CRUD application, created to store, create, share and display podcast recommendations for registered users.
- The app was developed and tested for use in Google Chrome Version 90.0.4430.93
- App users are required to log in or register before being able to sumbit podcast recommendations or update any show information.
- Tech wise: the app uses Ruby, SQL, HTML and CSS, and has been created on the Sinatra Framework.
- The app has been optimized for use on desktop, iPad and iPhone.
- Instructions are super simple: 
  1. Create your account to recommend a new show.
  2. Log in to your account.
  3. View the current podcast information.
  4. Submit your own recommendation via the Recommend button in the top right hand corner.
  
- Find The Podcast Rec via Heroku https://pure-oasis-44569.herokuapp.com/podcasts


## Technologies used
- Ruby
- SQL
- Sinatra 
- Gems
- HTML
- CSS
- Database tables exist for Podcast content, Users and Likes. 

## Background
- This project brief called for a full stack CRUD application, created to store, create, share and display podcast information to registered users.
- Users wishing to submit and update recommendations are required to register and sign in to the app.
- All app information (user, podcast and like details) are housed in a related database.
- Ruby and SQL have been used for all CRUD actions via RESTful routes.
- The app is optimised for use on desktop, iPhone and iPad.
- Podcast information can be submitted to the database and displayed in the front-end.

## Approach
- Create a database and tables in SQL to contain data for the podcast content, users, and likes.
- Create the app folder framework in Heroku.
- Create SQL queries to retrieve, create, update and delete data from these tables.

- Create Ruby functions to manipulate the SQL data:
-- to display, update, create and delete data in the database for podcast, user and likes tables.

- In the Sinatra main.rb make active the models, controllers, ERB files for podcasts, likes, sessions and user methods. 
-- Include gems being used.
-- Run bundle command in the terminal to ensure all gems created.

- In Controllers files create the routes for GET / POST / PUT / DELETE methods: 
-- include any data being captured by params or variables being used.
-- Call the related functions.

- To display podcast information on the homepage, run a loop within the ERB page:
-- to retrieve specific podcast data to display, such as podcast title or image.

- Use the podcast_id to link through to the show.erb page to display a single podcast.

- Add a form to the show.erb to delete a show (using DELETE route method).

- Add button on the show.erb page to edit a podcast, connecting to a separate form using the PUT route method to update content in the database.

- Ensure user has be logged in to undertake any delete or edit method, using Sessions methods and If/Else statements.

- Create form for users to register using POST route method.
-- Use params to capture the information submitted, and add bcrypt gem to query

- Create form for users to log in using Sessions and Post route methods.
-- Use params to capture the information submitted, and add bcrypt gem to query

- Create log out functionality.

- Create form for users to submit a new podcast using POST route method.
-- Use params to capture the information submitted.

- Add form to podcasts/index.erb page to register and display 'likes'
-- To enable 'likes' displaying create an array from the podcast-results
-- Loop through results using the count_like query to retreive the 'likes' table data and iterate through podcasts.
-- create variable to display 'like-count' on the erb page.
 

## Design
- Figma was used for the UI wireframes and initial visual design, please see the files via this GitHub Repo or via this Cloudinary link:
https://res.cloudinary.com/shell-shell/image/upload/v1623976409/Wireframes_zx8w52.png
- Draw.io was used for the database entity relationships. 
-- The diagram can be viewed either in the GitHub Repo or via this Cloudinary link: 
https://res.cloudinary.com/shell-shell/image/upload/v1623976977/Podcast-Rec-DB-ER-diagram_yisiyi.png


## Future updates
- User profile pages to come, including what recommedations they have submitted or liked (such as user history).
- User to be able to to save a recommendation to their profile.
- Catologue of shows to be searchable.
- Filtering of shows according to genre.


## Bugs
- Responsive design can require reloading.


## Screenshot of interface
The Podcast Rec homepage interface can be seen in the GitHub Repo or via this Cloudinary link: 
https://res.cloudinary.com/shell-shell/image/upload/v1623976397/The_Podcast_Rec_home_page_vgcarm.png