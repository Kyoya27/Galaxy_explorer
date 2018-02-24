class Placetobe < ApplicationRecord
  belongs_to :planet, optional: false
end
