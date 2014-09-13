class AddForeignKeysToComments < ActiveRecord::Migration
  def change
    add_reference :comments, :user, index: true
    add_reference :comments, :section, index: true
    add_reference :comments, :comment, index: true
  end
end
