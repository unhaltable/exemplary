class Document < ActiveRecord::Base

	belongs_to :user
	belongs_to :course
	has_many :sections

  validates :user, :name, :attachment, presence: true

  mount_uploader :attachment, DocumentUploader

  def page_count
    Cloudinary::Api.resource(attachment.my_public_id, pages: true)['pages']
  end

end
