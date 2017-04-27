class Truck < ApplicationRecord
  has_many :dishes
  has_many :truck_photos
  has_many :ratings
  has_many :users, through: :ratings
end
