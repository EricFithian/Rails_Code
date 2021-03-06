class User < ApplicationRecord
  has_secure_password
  has_many :ratings
  has_many :sessions
  has_many :products, through: :ratings
  has_many :companies, through: :ratings
  has_many :orders
  has_many :favorite_products
  has_many :carted_products
end
