class Document < ApplicationRecord
  belongs_to :item
  mount_uploader :document, DocumentUploader
end
