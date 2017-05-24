class Company < ApplicationRecord
  has_secure_password
  has_many :products
  has_many :company_images
  has_many :ratings
  has_many :users, through: :ratings
  has_many :sessions
end
