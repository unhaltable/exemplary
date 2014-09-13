class CreateSections < ActiveRecord::Migration
  def change
    create_table :sections do |t|
      t.content :text

      t.timestamps
    end
  end
end
