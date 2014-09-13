class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :score
      t.text :content
      
      t.timestamps
    end
  end
end
