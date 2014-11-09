class Npc < ActiveRecord::Base
	belongs_to :campaign
	belongs_to :map
	belongs_to :location
	has_attached_file :character_sheet
	has_attached_file :image
end
