class Planet < ApplicationRecord
  has_many :placetobes

  def initialize(params = {})
  file = params.delete(:thumbnail)
  super
    if file
      self.thumbnail = thumbnail.read
    end
  end
end
