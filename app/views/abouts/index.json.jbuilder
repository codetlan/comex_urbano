json.array!(@abouts) do |about|
  json.extract! about, :id, :name, :description
  json.url about_url(about, format: :json)
end
