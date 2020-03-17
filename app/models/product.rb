class Product < ApplicationRecord
  has_one :product

  scope :is_unapproved, -> { where("approved = false") }

  validates_presence_of :gtin, :name, :product_type
end
