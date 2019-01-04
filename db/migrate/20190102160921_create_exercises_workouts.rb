class CreateExercisesWorkouts < ActiveRecord::Migration[5.2]
  def change
    create_table :exercises_workouts do |t|
      t.integer :exercise_id
      t.integer :workout_id

      t.timestamps
    end
  end
end
