class CreateShields < ActiveRecord::Migration
  def change
    create_table :shields do |t|
      t.string :shield
      t.string :origin
      t.text :description
      t.integer :surname_id

      t.timestamps
    end
  end
end
