<center>
<img src="http://i.imgur.com/KxTOeje.png" width="400" />

A simple CRUD (Create, Read, Update, Delete) site for listing accommodations. 
[View Site](https://dreamersbnb.herokuapp.com/)

</center>
##Installation 
**Technologies used:**
<br>
`Ruby / Sinatra / PostgreSQL / DataMapper / Javascript / JQuery / Bootstrap`
<br>
**Testing Frameworks:**
<br>
`RSpec / Capybara`

1. Clone this repository
2. Create two `postgres` databases called `dreamersbnb_development` and `dreamersbnb_test`
3. Run `bundle install` to install Gemfiles
4. Run `rake db_migrate` to create database tables
5. Run `rake db_migrate RACK_ENV=test`to create test database tables
6. Run `rspec` to make sure all tests are passing!
6. Run `rackup config.ru`
7. In a Web Broswer open up `localhost:9292`
8. Create listings!

##How it works
- Everyone can see available listings
- Users must sign up to add listings and make bookings  
- Users create listings with a form and sets availabilty with datepicker
- Booking requests can be accepted or rejected
- A date can only be requested if it has not already been booked
- AJAX is used with the JQuery datapicker to block out dates

Authors
-------
 - [Daniel Ortiz](http://www.github.com/Vollcode)
 - [Michael Harrison](http://www.github.com/harrim91)
 - [Ruta Baltiejute](http://www.github.com/Melodija)
 - [Noah Pollock](http://www.github.com/knowerlittle)

License
-------
:hatching_chick: Free as a bird - 2016 :hatched_chick:
