class Product < ApplicationRecord

  has_one :marketing_product, dependent: :destroy
  has_many :children, class_name: "Product",
           foreign_key: "parent_id"


  belongs_to :parent, class_name: "Product", optional: true

  scope :is_unapproved, -> { where("approved = false") }

  validates_presence_of :gtin, :name, :product_type
  validates_uniqueness_of :gtin
end
