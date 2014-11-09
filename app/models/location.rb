class Location < ActiveRecord::Base
	belongs_to :map
	has_many :sublocations, class_name: "Location", foreign_key: "superlocation_id"
	belongs_to :superlocation, class_name: "Location"
end
