# encoding: utf-8

class DocumentUploader < CarrierWave::Uploader::Base

  # Use Cloudinary integration
  include Cloudinary::CarrierWave

  version :image do
    process convert: :png
  end

  # Add a white list of extensions which are allowed to be uploaded.
  # For images you might use something like this:
  def extension_white_list
    %w(jpg jpeg gif png pdf)
  end

end
