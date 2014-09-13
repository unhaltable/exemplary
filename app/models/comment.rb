class Comment < ActiveRecord::Base

	belongs_to :user
	belongs_to :section
	belongs_to :comment
	has_many :comments

	searchable do
		text :content
	end
end
