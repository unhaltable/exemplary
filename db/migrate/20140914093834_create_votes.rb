class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.boolean :vote #true is up, false is down
      t.timestamps
    end
    add_reference :votes, :user, index: true
    add_reference :votes, :comment, index: true
  end
end
