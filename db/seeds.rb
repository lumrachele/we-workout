# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# xlsx = Roo::Excelx.new(File.expand_path('../../bin/Exercises.xlsx'))
# # puts xlsx
# xlsx.each_row_streaming(offset: 1) do |row|
#   Exercise.create(
#     name: row[1]
#   )
# end

#Users
#User.create(first_name: "Rachel", last_name: "Lum", email: "rlum894@gmail.com", password_digest: "potato")
#User.create(first_name: "Bob", last_name: "Joe", email: "bob@joe.com", password_digest: "guac")
#puts "users done"

#Categories
Category.create(name: "Core")
Category.create(name: "Upper Body")
Category.create(name: "Lower Body")
puts "categories done"

#Core Exercises
Exercise.create(name: "Reverse Crunch", description: "This is a test description")
Exercise.create(name: "Alternating Heel Touch", description: "This is a test description")
Exercise.create(name: "Plank", description: "This is a test description")
Exercise.create(name: "Ab Bicycles", description: "This is a test description")
Exercise.create(name: "Side Plank", description: "This is a test description")
Exercise.create(name: "V-Up", description: "This is a test description")
Exercise.create(name: "Crunch", description: "This is a test description")
Exercise.create(name: "Sit-Up", description: "This is a test description")
puts "core done"

#Upper Body
Exercise.create(name: "Bent-Over Row", description: "This is a test description")
Exercise.create(name: "One Arm Dumbbell Row", description: "This is a test description")
Exercise.create(name: "Alternating Hammer Curl", description: "This is a test description")
Exercise.create(name: "Bicep Curl", description: "This is a test description")
Exercise.create(name: "Cross Body Hammer Curl", description: "This is a test description")
Exercise.create(name: "Preacher Dumbbell Curl", description: "This is a test description")
Exercise.create(name: "Chest Press", description: "This is a test description")
Exercise.create(name: "Push-Up", description: "This is a test description")
Exercise.create(name: "Pec Deck Fly", description: "This is a test description")
Exercise.create(name: "Superman", description: "This is a test description")
Exercise.create(name: "Arnold Dumbbell Press", description: "This is a test description")
Exercise.create(name: "Shoulder Press", description: "This is a test description")
Exercise.create(name: "Bench Dips", description: "This is a test description")
puts "uppper body done"

#Lower Body
Exercise.create(name: "Elevated Hip Lift", description: "This is a test description")
Exercise.create(name: "Deadlift", description: "This is a test description")
Exercise.create(name: "Leg Curl", description: "This is a test description")
Exercise.create(name: "Barbell Lunge", description: "This is a test description")
Exercise.create(name: "Barbell Walking Lunge", description: "This is a test description")
Exercise.create(name: "Step-Up", description: "This is a test description")
Exercise.create(name: "Squat", description: "This is a test description")
puts "lower body done"

ExerciseCategory.create(exercise_id: 1, category_id: 1)
ExerciseCategory.create(exercise_id: 2, category_id: 1)
ExerciseCategory.create(exercise_id: 3, category_id: 1)
ExerciseCategory.create(exercise_id: 4, category_id: 1)
ExerciseCategory.create(exercise_id: 5, category_id: 1)
ExerciseCategory.create(exercise_id: 6, category_id: 1)
ExerciseCategory.create(exercise_id: 7, category_id: 1)
ExerciseCategory.create(exercise_id: 8, category_id: 1)
ExerciseCategory.create(exercise_id: 9, category_id: 2)
ExerciseCategory.create(exercise_id: 10, category_id: 2)
ExerciseCategory.create(exercise_id: 11, category_id: 2)
ExerciseCategory.create(exercise_id: 12, category_id: 2)
ExerciseCategory.create(exercise_id: 13, category_id: 2)
ExerciseCategory.create(exercise_id: 14, category_id: 2)
ExerciseCategory.create(exercise_id: 15, category_id: 2)
ExerciseCategory.create(exercise_id: 16, category_id: 2)
ExerciseCategory.create(exercise_id: 17, category_id: 2)
ExerciseCategory.create(exercise_id: 18, category_id: 2)
ExerciseCategory.create(exercise_id: 19, category_id: 2)
ExerciseCategory.create(exercise_id: 20, category_id: 2)
ExerciseCategory.create(exercise_id: 21, category_id: 2)
ExerciseCategory.create(exercise_id: 22, category_id: 3)
ExerciseCategory.create(exercise_id: 23, category_id: 3)
ExerciseCategory.create(exercise_id: 24, category_id: 3)
ExerciseCategory.create(exercise_id: 25, category_id: 3)
ExerciseCategory.create(exercise_id: 26, category_id: 3)
ExerciseCategory.create(exercise_id: 27, category_id: 3)
ExerciseCategory.create(exercise_id: 28, category_id: 3)
puts "exercise categories done"

puts "done seeding"
