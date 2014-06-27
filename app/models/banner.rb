class Banner < ActiveRecord::Base
  belongs_to :imageable , polymorphic: true

  validates_presence_of :photo

  has_attached_file :photo, styles: {
      thumb: '100x100>',
      square: '200x200#',
      medium: '300x300>'
  }

  # Validate the attached image is image/jpg, image/png, etc
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end
