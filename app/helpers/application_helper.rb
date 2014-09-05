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

  def tags_all(classes = %w{s m l})
    @tags = ActsAsTaggableOn::Tag.all(
                     :select => "#{ActsAsTaggableOn::Tag.table_name}.id, #{ActsAsTaggableOn::Tag.table_name}.name, COUNT(*) AS count",
                     :joins  => "LEFT OUTER JOIN #{ActsAsTaggableOn::Tagging.table_name} ON #{ActsAsTaggableOn::Tag.table_name}.id = #{ActsAsTaggableOn::Tagging.table_name}.tag_id",
                     :group  => "#{ActsAsTaggableOn::Tag.table_name}.id, #{ActsAsTaggableOn::Tag.table_name}.name HAVING COUNT(*) > 0",
                     :order  => "count DESC"
    ).sort_by(&:name)


    max = @tags.sort_by(&:count).last
    @tags.each do |tag|
      index = tag.count.to_f / max.count * (classes.size - 1)
      yield(tag, classes[index.round])
    end
  end
end
