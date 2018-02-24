class Planet < ApplicationRecord
  has_many :placetobes
  has_one :simulation
end
