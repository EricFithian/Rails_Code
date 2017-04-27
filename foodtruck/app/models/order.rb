class Order < ApplicationRecord
  has_many :ordered_dishes
  has_many :dishes, through: :ordered_dishes
  belongs_to :user
end
