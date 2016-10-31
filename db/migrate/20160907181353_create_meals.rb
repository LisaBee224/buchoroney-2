class CreateMeals < ActiveRecord::Migration
  def change
    create_table :meals do |t|
      t.string :desc
      t.timestamps null: false
    end
  end
end
