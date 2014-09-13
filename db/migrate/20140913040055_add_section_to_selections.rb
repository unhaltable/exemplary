class AddSectionToSelections < ActiveRecord::Migration
  def change
    add_reference :selections, :section, index: true
  end
end
