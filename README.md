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