AppName: sloc, share location.
Its a location shared application with follwing versions:
Ruby 2.7.0
Rails 6.0

In this application geocode gem is user to convert address to latitude and longitude, as it is using free
tier it could be the case it do not detect complex address.

Faker gem is used in the seeds.rb to populated database with fake email ids.

Google static maps are used to display latitude and longitude location on the map. Map over the website 
do not have functionality to zoom or move as it is a free under tier usage.

Database is mysql, I have tried it with postgres but for postgres 11 due to some missing adapter droped it.

I am Brand new with webpack, in a beginer stage with React so made the front end in rails.
  

To deplay this application with mysql on Heroku it require to add credit card,
so the application is facing the database issue.
Heroku url: https://sloc.herokuapp.com/users/sign_in which is giving error
Application is currently deplayed at my machine at url:
GitHub repo: https://github.com/vidurpunj/sloc
If you want the application to be deployed on heroku share your heroku credentials.