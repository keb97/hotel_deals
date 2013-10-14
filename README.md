Hotel Deals 
================================

About
-----

This is Rails 4.0.0 app that consumes an API containing information about hotel deals. The app displays information about the deals and allows the user to view only the highly rated or highly discounted hotels.

Get started
-----------

You will need to have Ruby and Rails installed on your machine. 
You can find information for setting up a Ruby on Rails environment for your operating system of choice at this page: http://railscasts.com/episodes/310-getting-started-with-rails?view=asciicast

Once you have Ruby and Rails set up, clone this repo. This app uses a PostgreSQL database in development and testing, so you will need to set the username and password in the config/database.yml according to the user for your own PostgreSQL database. 

If you not already have PostgreSQL set up, you may want to user SQLite3 instead, since is requires less set up. You will need to replace the line "gem 'pg'" in the Gemfile to "gem 'sqlite3'," and also modify the config/database.yml file. Can find the appropriate config/database.yml content here: https://github.com/keb97/rails4nested/blob/master/config/database.yml. 

Once you have the database.yml file set up correctly, run the following commands:
- bundle install
- rake db:create
- rake db:migrate
- rails s

Now you should be able to access the app by visiting localhost:3000 in your browser of choice.

If you would like to run the specs, you should run the following commands:
- rake db:test:prepare
- bundle exec rspec

The specs may take some time to run the first time through, as the gem VCR will be making a request to the API and the creating a new cassette. Subsequent runnings of the specs will not take as much time.

Other comments
--------------
There are no problems I am aware of with the specs or the functionality of this application. 
I am assuming that users would like to see a wide variety of hotel options at one time. I wanted them to have only a few easy decisions to make, and I chose to use jquery so that they can assess their options and get more information fairly quickly. I decided that since many location-based searches would not turn up any results, given the limited number of deals available, it was better to emphasize more universal aspects of the deals (percentage savings and ratings) and assume we were targeting a user who did not already have a trip entirely planned.