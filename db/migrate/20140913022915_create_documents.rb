class CreateDocuments < ActiveRecord::Migration
  def change
    create_table :documents do |t|
      t.name :string

      t.timestamps
    end
  end
end
