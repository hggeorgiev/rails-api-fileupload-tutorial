class Item < ApplicationRecord
  has_many :documents
  attr_accessor :image_base
  # before_validation :parse_image

  has_attached_file :picture, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment :picture, presence: true
  do_not_validate_attachment_file_type :picture

  private

  def save_attachments
    p 'hey!'
  end

  def parse_image

    image = Paperclip.io_adapters.for(image_base)
    image.original_filename = "image.jpg"
    self.picture = image
  end
end
