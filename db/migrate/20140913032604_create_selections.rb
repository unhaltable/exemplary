class CreateSelections < ActiveRecord::Migration
  def change
    create_table :selections do |t|
      t.integer :x
      t.integer :y
      t.integer :x2
      t.integer :y2
      
      t.timestamps
    end
  end
end
