class Post < ApplicationRecord
  validates_presence_of :name, :code, :gtin_number, :brand, :brand_onwer
end
