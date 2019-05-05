## WeWorkout

This Rails application follows an MVC Structure to create a complete working application. It includes both standard RESTful  and custom routes, and communicates with the PostgreSQL Database. <a href=https://vimeo.com/328025663>Demo Video</a>


<h2>Contents</h2>

* [Essential Gems](#essential-gems-&-dependencies)

* [Installation](#installation)

* [Models](#models)

* [Future Development](#future-development)



# <h2>Essential Gems & Dependencies</h2>

This app uses Ruby version 2.5.3. This Rails application was created using ```rails new we_workout --database=postgresql```, directing it to use postgreSQL databases. Gems 'rack-cors' and 'active_model_serializers' are used for Cross-Origin Resource Sharing, allowing for cross-origin AJAX.

# <h2>Installation</h2>

To get started with this app, simply fork and clone this repository. Remember to ```bundle install``` and run ```rails db:create && rails db:migrate && rails db:seed``` to create and initialize the database. Double check that you have PostgreSQL running on your computer. To run, enter the command ```rails s``` in your terminal and navigate to ```http://localhost:3000``` or whatever port number you would like to indicate.

# <h2>Models</h2>

There are six models used for this application:

<h3>User</h3>


Key Controller Methods: 



# <h2>Future Development</h2>


At this moment, this application does not allow for open source contributions.
