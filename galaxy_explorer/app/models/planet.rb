class Planet < ApplicationRecord
  has_many :placetobes
  has_one :simulation

  def initialize(params = {})
  file = params.delete(:thumbnail)
  super
    if file
      File.open("app/assets/images/" + params['name'] + ".jpg", "wb") { |f| f.write(file.read) }
    end
  end
end
