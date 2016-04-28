class Item < ApplicationRecord
  has_many :documents

  attr_accessor :document_data


  has_attached_file :picture, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment :picture, presence: true
  do_not_validate_attachment_file_type :picture



  def save_attachments(params)
    params[:document_data].each do |doc|
      self.documents.create(:file => doc)
    end
  end


end
