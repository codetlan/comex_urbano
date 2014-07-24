class Photo < ActiveRecord::Base
  belongs_to :section
  has_many :publications, :as => :published
  acts_as_taggable

  # This method associates the attribute ":avatar" with a file attachment
  has_attached_file :image, styles: {
      thumb: '100x100>',
      square: '200x200#',
      medium: '300x300>',
      photo: '720x485#'
  }

  # Validate the attached image is image/jpg, image/png, etc
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

  def self.search(search)
    if search
      where('name LIKE ? OR description LIKE ?', "%#{search}%", "%#{search}%")
    else
      Photo.all
    end
  end
end
