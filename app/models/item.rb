class Item < ApplicationRecord
  mount_uploader :picture, PictureUploader
end
