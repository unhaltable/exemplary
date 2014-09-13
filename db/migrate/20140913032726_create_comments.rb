class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.score :int
      t.content :text
      
      t.timestamps
    end
  end
end
