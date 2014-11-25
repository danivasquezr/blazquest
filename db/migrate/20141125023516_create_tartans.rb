class CreateTartans < ActiveRecord::Migration
  def change
    create_table :tartans do |t|
      t.string :tartan
      t.text :tartext
      t.integer :surname_id

      t.timestamps
    end
  end
end
