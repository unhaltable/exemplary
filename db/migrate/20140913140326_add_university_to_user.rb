class AddUniversityToUser < ActiveRecord::Migration
  def change
    add_reference :users, :university, index: true
  end
end
