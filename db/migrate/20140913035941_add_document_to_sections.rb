class AddDocumentToSections < ActiveRecord::Migration
  def change
    add_reference :sections, :document, index: true
  end
end
