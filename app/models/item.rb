class Item < ApplicationRecord
  has_many :documents
  attr_accessor :document_data
  mount_base64_uploader :picture, PictureUploader
end
