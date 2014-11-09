json.array!(@characters) do |character|
  json.extract! character, :id, :user_id, :campaign_id, :role, :name, :notes
  json.url character_url(character, format: :json)
end
