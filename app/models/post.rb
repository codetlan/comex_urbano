class Post < ActiveRecord::Base
  belongs_to :section
  has_many :publications, :as => :published, dependent: :destroy
  acts_as_taggable
  is_impressionable
  # This method associates the attribute ":avatar" with a file attachment
  has_attached_file :image, styles: {
      thumb: '100x100>',
      square: '200x200#',
      medium: '300x300>',
      post: "305x231#",
      post_show: '722x384#'
  }

  # Validate the attached image is image/jpg, image/png, etc
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

  def self.search(search)
    if search
      where('title LIKE ? OR introduction LIKE ? OR description LIKE ?', "%#{search}%", "%#{search}%", "%#{search}%")
    else
      Post.all
    end
  end
end
