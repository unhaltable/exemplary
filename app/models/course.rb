class Course < ActiveRecord::Base
	has_many :documents
	has_many :notes
	belongs_to :university
	belongs_to :user
end
