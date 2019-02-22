class CreateWorkouts < ActiveRecord::Migration[5.2]
  def change
    create_table :workouts do |t|
      t.string :exercise
      t.string :muscle
      t.integer :sets
      t.integer :reps
      t.integer :weight_amount
      t.integer :calories_burned
      t.datetime :workout_date
      t.timestamps
    end
  end
end
