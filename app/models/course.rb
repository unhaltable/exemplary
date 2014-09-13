class Course < ActiveRecord::Base
	has_many :documents
	has_many :notes
end
