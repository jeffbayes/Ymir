class Map < ActiveRecord::Base
	belongs_to :campaign
	has_attached_file :image
end
