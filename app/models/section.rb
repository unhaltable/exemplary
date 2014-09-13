class Section < ActiveRecord::Base

	belongs_to :document
	has_many :selections
	has_many :comments

  validates :document, presence: true

end
