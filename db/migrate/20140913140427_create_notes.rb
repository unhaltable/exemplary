class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      
      t.timestamps
    end

    add_reference :notes, :course, index: true
  end
end
