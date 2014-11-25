class CreateSurnames < ActiveRecord::Migration
  def change
    create_table :surnames do |t|
      t.string :surname
      t.text :history
      t.string :shield
      t.string :origin
      t.text :description

      t.timestamps
    end
  end
end
