class CreateWorkouts < ActiveRecord::Migration[5.2]
  def change
    create_table :workouts do |t|
      t.string :title
      t.integer :sets
      t.string :notes
      t.integer :user_id
      t.string :image, default: Dir.entries("public/workout_photos").sample

      t.timestamps
    end
  end
end
