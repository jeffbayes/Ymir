class Campaign < ActiveRecord::Base
  has_many :characters
  has_many :users, through: :characters
  has_many :maps
  has_many :npcs
end
