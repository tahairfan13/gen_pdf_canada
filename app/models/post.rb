class Post < ApplicationRecord
  belongs_to :product
  belongs_to :user
  validates_presence_of :brand, :brand_onwer
end
