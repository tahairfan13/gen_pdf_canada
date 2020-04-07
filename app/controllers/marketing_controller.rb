class MarketingController < ApplicationController
  def index
    @unapproved_product = Product.where(approved: false, ignore:false)
    @saved_product =  MarketingProduct.joins(:product).where(user_id: current_user.id, products: { approved: false})
    @approved_product = current_user.marketing_products
    @ignored_product = Product.where(ignore: true)
  end
end
