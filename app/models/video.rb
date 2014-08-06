class Video < ActiveRecord::Base
  belongs_to :section
  has_many :publications, :as => :published, dependent: :destroy
  acts_as_taggable
  is_impressionable

  def self.search(search)
    if search
      where('name LIKE ? OR description LIKE ?', "%#{search}%", "%#{search}%")
    else
      Video.all
    end
  end

  def link_embed(link_url)
    if link_url[/youtu\.be\/([^\?]*)/]
      @link_id = "http://www.youtube.com/embed/"+$1
    elsif link_url[/^.*((v\/)|(embed\/)|(watch\?))\??v?=?([^\&\?]*).*/]
      @link_id = "http://www.youtube.com/embed/"+$5
    elsif link_url[/vimeo\.com\/originals\/ownyourtomorrow\/([^\?]*)/]
      @link_id = "http://player.vimeo.com/video/"+$1
    elsif link_url[/vimeo\.com\/([^\?]*)/]
      @link_id = "http://player.vimeo.com/video/"+$1
    end
  end

  def youtube_id
    regex = /youtube.com.*(?:\/|v=)([^&$]+)/
    puts self.link.match(regex)[1].to_yaml
    id = self.link.match(regex)[1]
  end
end
