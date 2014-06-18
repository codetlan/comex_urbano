json.array!(@photos) do |photo|
  json.extract! photo, :id, :name, :description, :visit, :active
  json.url photo_url(photo, format: :json)
end
