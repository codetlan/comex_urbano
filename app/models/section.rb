class Section < ActiveRecord::Base
  belongs_to :category
  has_many :videos
  has_many :photos
  has_many :posts

  # This method associates the attribute ":avatar" with a file attachment
  has_attached_file :main_banner, styles: {
      main_banner: '1228x314#',
      medium: '300x300>'
  }

  # Validate the attached image is image/jpg, image/png, etc
  validates_attachment_content_type :main_banner, :content_type => /\Aimage\/.*\Z/
end
