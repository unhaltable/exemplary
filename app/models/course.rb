class Course < ActiveRecord::Base
	has_many :documents
	has_many :notes
	searchable do
		string :name, :coursecode
	end

	belongs_to :university
	belongs_to :user
end
