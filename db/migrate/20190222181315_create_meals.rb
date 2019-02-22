class CreateMeals < ActiveRecord::Migration[5.2]
  def change
    create_table :meals do |t|
      t.string :meal_name
      t.string :meal_type
      t.integer :calories_consumed

      t.timestamps
    end
  end
end
