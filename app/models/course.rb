class Course < ActiveRecord::Base
	has_many :documents
	has_many :notes

	searchable do
		string :name, :coursecode
	end
end
