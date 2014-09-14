class Section < ActiveRecord::Base

	belongs_to :document
	has_many :selections
	has_many :comments

  accepts_nested_attributes_for :selections

end
