class CreateSelections < ActiveRecord::Migration
  def change
    create_table :selections do |t|
      t.x :int
      t.y :int
      t.x2 :int
      t.y2 :int
      
      t.timestamps
    end
  end
end
