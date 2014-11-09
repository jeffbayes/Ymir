json.array!(@maps) do |map|
  json.extract! map, :id, :campaign_id, :notes
  json.url map_url(map, format: :json)
end
