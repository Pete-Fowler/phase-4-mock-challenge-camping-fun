class Camper < ApplicationRecord
  has_many :signups
  has_many :activies, through: :signups

end
