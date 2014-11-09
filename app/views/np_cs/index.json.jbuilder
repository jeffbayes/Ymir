json.array!(@npcs) do |npc|
  json.extract! npc, :id, :map_id, :location_id, :name, :notes, :character_sheet, :image
  json.url npc_url(npc, format: :json)
end
