class User < ApplicationRecord
  has_many :posts
  has_many :marketing_products

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
