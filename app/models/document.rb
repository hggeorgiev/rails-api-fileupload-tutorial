class Document < ApplicationRecord
  belongs_to :item
  has_attached_file :file
  validates_attachment :file, presence: true, content_type: { content_type: "application/pdf" }
end
