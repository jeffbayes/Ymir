json.array!(@locations) do |location|
  json.extract! location, :id, :map_id, :superlocation_id, :name, :type, :string, :notes, :image
  json.url location_url(location, format: :json)
end
