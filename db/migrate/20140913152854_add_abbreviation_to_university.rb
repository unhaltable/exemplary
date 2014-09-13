class AddAbbreviationToUniversity < ActiveRecord::Migration
  def change
    add_column :universities, :abbreviation, :string
  end
end
