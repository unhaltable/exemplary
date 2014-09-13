class AddCourseToDocument < ActiveRecord::Migration
  def change
    add_reference :documents, :course, index: true
  end
end
