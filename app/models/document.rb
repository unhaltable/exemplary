class Document < ActiveRecord::Base

	belongs_to :user
	has_many :sections

  validates :user, presence: true

end
