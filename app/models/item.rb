class Item < ApplicationRecord
  has_many :documents
  attr_accessor :document_data
  mount_uploader :picture, PictureUploader
end
