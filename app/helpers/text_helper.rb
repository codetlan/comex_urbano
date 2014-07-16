module TextHelper

  TAG_PATTERN = %r{(</?.*?>)}

  def truncate_html(text, max_length = 30, ellipsis = "...")
    tag_free = text.gsub(TAG_PATTERN, '')
    truncate(tag_free, :length => max_length, :omission => ellipsis)
  end

end