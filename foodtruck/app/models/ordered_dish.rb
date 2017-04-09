class OrderedDish < ApplicationRecord
  belongs_to :dish
  belongs_to :order
end
