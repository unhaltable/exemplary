class Document < ActiveRecord::Base

	belongs_to :user
	belongs_to :course
	has_many :sections

  validates :user, presence: true

  mount_uploader :attachment, DocumentUploader

end
