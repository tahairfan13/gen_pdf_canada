class MarketingController < ApplicationController
  def index
    @unapproved_product = Product.where(approved: false, ignore:false)
    @approved_product = current_user.marketing_products
    @ignored_product = Product.where(ignore: true)
  end
end
