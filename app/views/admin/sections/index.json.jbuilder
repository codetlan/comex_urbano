json.array!(@sections) do |section|
  json.extract! section, :id, :name, :description, :title, :active
  json.url section_url(section, format: :json)
end
