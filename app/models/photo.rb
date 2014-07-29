class Photo < ActiveRecord::Base
  belongs_to :section
  has_many :publications, :as => :published
  acts_as_taggable
  is_impressionable

  # This method associates the attribute ":avatar" with a file attachment
  has_attached_file :image, styles: {
      list: '240x180#',
      photo: '720x485#',
      post: "305x231#",
      photo_show: '722x384#'
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
