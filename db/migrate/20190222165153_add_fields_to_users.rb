class AddFieldsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :name, :string
    add_column :users, :gender, :string
    add_column :users, :age, :integer
    add_column :users, :height, :string
    add_column :users, :weight, :string
    add_column :users, :dob, :date
    add_column :users, :gym, :string
  end
end
