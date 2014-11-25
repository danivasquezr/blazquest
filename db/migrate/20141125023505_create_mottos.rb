class CreateMottos < ActiveRecord::Migration
  def change
    create_table :mottos do |t|
      t.string :motto
      t.string :mean
      t.integer :surname_id

      t.timestamps
    end
  end
end
