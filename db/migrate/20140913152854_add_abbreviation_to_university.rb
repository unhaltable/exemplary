class AddAbbreviationToUniversity < ActiveRecord::Migration
  def change
    add_column :unversities, :abbreviation, :string
  end
end
