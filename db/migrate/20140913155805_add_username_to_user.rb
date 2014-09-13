class AddUsernameToUser < ActiveRecord::Migration
  def change
    add_column :users, :username, :string #why the fuck did we only think of this now?
  end
end
