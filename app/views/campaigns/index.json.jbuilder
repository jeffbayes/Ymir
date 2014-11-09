json.array!(@campaigns) do |campaign|
  json.extract! campaign, :id, :name, :notes
  json.url campaign_url(campaign, format: :json)
end
