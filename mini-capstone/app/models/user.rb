class User < ApplicationRecord
  has_secure_password
  has_many :recipes
  has_many :orders
  has_many :sessions
  has_many :carted_products
end
