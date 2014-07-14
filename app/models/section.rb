class Section < ActiveRecord::Base
  belongs_to :category
  has_many :videos
  has_many :photos
  # This method associates the attribute ":avatar" with a file attachment
  has_attached_file :main_banner, styles: {
      thumb: '100x100>',
      square: '200x200#',
      medium: '300x300>'
  }

  has_attached_file :secondary_banner, styles: {
      thumb: '100x100>',
      square: '200x200#',
      medium: '300x300>'
  }

  # Validate the attached image is image/jpg, image/png, etc
  validates_attachment_content_type :main_banner, :secondary_banner, :content_type => /\Aimage\/.*\Z/
end
