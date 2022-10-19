class Camper < ApplicationRecord
  has_many :signups
  has_many :activies, through: :signups
  validates :name, presence: true 
  validates :age, presence: true, numericality: {greater_than: 7, less_than: 19}
end
