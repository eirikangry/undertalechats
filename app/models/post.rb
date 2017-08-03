class Post < ApplicationRecord
  belongs_to :user
  
  has_attached_file :image, styles: {
    thumb: '100x100>',
    square: '200x200#',
    medium: '300x300>',
    large: '500x500>',
  }

  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end
