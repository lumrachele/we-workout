class CreateExercises < ActiveRecord::Migration[5.2]
  def change
    create_table :exercises do |t|
      t.string :name
      t.string :description
      t.string :image, default: Dir.entries("public/workout_photos").sample

      t.timestamps
    end
  end
end
