class CreateWorkouts < ActiveRecord::Migration[5.2]
  def change
    create_table :workouts do |t|
      t.string :title
      t.integer :sets
      t.integer :user_id
      t.integer :exercise_id
      t.string :notes

      t.timestamps
    end
  end
end
