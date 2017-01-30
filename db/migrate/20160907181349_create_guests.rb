class CreateGuests < ActiveRecord::Migration
  def change
    create_table :guests do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.references :party, index: true
      t.references :meal, index: true
      t.boolean :attending

      t.timestamps null: false
    end
  end
end
