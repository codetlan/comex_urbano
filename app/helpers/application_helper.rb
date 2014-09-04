module ApplicationHelper
  def link_to_add_fields(name, f, association)
    new_object = f.object.send(association).klass.new
    id = new_object.object_id
    fields = f.fields_for(association, new_object, child_index: id) do |builder|
      render(association.to_s.singularize + "_fields", f: builder)
    end
    link_to(name, '#', class: "add_fields btn btn-primary", data: {id: id, fields: fields.gsub("\n", "")})
  end

  def human_date(date)
    if !date.nil?
      date.strftime('%e de %B del %Y')
    end
  end

  def blog_date(date)
    if !date.nil?
      date.strftime('%e %b %Y')
    end
  end

  def latest_photos
    @videos = Photo.all.sort! { |a, b| b.impressionist_count <=> a.impressionist_count }
  end

  def latest_videos
    @videos = Video.all.sort! { |a, b| b.impressionist_count <=> a.impressionist_count }
  end

  def site_banners
    @banners = Banner.all
  end

  def menu
    @categories = Category.all.where('active = ?', 1)
  end

  def home_details
    @landing_pages = LandingPage.all
  end

  def parse_youtube(url)
    regex = /(?:.be\/|\/watch\?v=|\/(?=p\/))([\w\/\-]+)/
    url.match(regex)[1]
  end

  def youtube_thumb(link)
    return "http://img.youtube.com/vi/#{parse_youtube(link)}/hqdefault.jpg"
  end
end
