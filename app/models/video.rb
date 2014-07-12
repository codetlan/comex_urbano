class Video < ActiveRecord::Base
  belongs_to :section

  def self.search(search)
    if search
      where('name LIKE ? OR description LIKE ?', "%#{search}%", "%#{search}%")
    else
      Video.all
    end
  end

  def youtube_embed(youtube_url)
    if youtube_url[/youtu\.be\/([^\?]*)/]
      @youtube_id = "http://www.youtube.com/embed/"+$1
    else
      # Regex from # http://stackoverflow.com/questions/3452546/javascript-regex-how-to-get-youtube-video-id-from-url/4811367#4811367
      youtube_url[/^.*((v\/)|(embed\/)|(watch\?))\??v?=?([^\&\?]*).*/]
      @youtube_id = "http://www.youtube.com/embed/"+$5
    end
  end

end
