class University < ActiveRecord::Base
	has_many :users
	has_many :courses

	searchable do
		string :abbreviation, :name
	end
end
