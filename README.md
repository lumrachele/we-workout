## WeWorkout

WeWorkout provides an easy solution for users to customize and make edits to their personal workouts. This Rails application follows an MVC Structure to create a complete working application. It includes both standard RESTful  and custom routes, and communicates with the PostgreSQL Database. <a href=https://vimeo.com/328025663>Demo Video</a>


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

The ```User``` model has attributes for first name, last name, email, and password digest. This allows for proper authentication. A user can log in with an existing account via email and password, or create a new account with first name, last name, email, and password.

Key Controller Methods: new, create, show

<h3>Category</h3>

The ```Category``` model assists in filtering the different exercises in the database. It is stored as a category_id in each exercise, and will refer to either upper body, lower body, or core exercises.

<h3>Exercise</h3>

Each instance of ```Exercise``` has a name, description, and image. All exercises are seeded data, with seeded image urls provided by Google. Users can add specific exercises to their workouts.

Key Controller Methods: index, show

<h3>Workout</h3>

A ```Workout``` instance has attributes title, sets, notes, user_id, and image. A user can create a workout and edit any of its attributes. Since it contains the user_id attribute, this eliminates the need for a join table.

Key Controller Methods: new, create, show, edit, update, add_exercise (custom), add_the_exercises (custom)

<h3>ExerciseCategory</h3>

The ```ExerciseCategory``` model is the join table for exercises and categories, since some exercises can have many categories, and vice versa. This provides ease of filtering.

<h3>ExerciseWorkout</h3>

The ```ExerciseWorkout``` join table establishes the relationship when a user adds an exercise to a workout, since the exercises can belong to many workouts.


# <h2>Future Development</h2>


At this moment, this application does not allow for open source contributions.
