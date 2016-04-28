class Item < ApplicationRecord
  attr_accessor :image_base
  before_validation :parse_image

  has_attached_file :picture, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :picture, content_type: /\Aimage\/.*\Z/

  private

  def parse_image

    image = Paperclip.io_adapters.for(image_json)
    image.original_filename = "image.jpg"
    self.photo = image
  end
end
