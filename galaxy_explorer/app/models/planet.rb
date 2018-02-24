class Planet < ApplicationRecord
  has_many :placetobes
  has_one :simulation

  def initialize(params = {})
  file = params.delete(:thumbnail)
  super
    if file
      self.thumbnail = thumbnail.read
    end
  end
end
