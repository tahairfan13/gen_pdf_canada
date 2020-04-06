class MarketingProductsController < ApplicationController
  before_action :set_marketing_product, only: [:show, :edit, :update, :destroy]

  def index
    @marketing_products = current_user.marketing_products
  end

  def show
  end

  def new
    @product = Product.find_by(id: params[:product_id])
    @marketing_product = MarketingProduct.new
  end

  def edit
    @product = Product.find_by(id: @marketing_product.product_id)
  end

  def create
    @marketing_product = MarketingProduct.new(marketing_product_params)
    @marketing_product.user = current_user
    respond_to do |format|
      if @marketing_product.save
        product = Product.find_by(id: @marketing_product.product_id)
        if product.update(approved: true, ignore: false)
          format.html { redirect_to  marketing_index_path, notice: 'market information successfully submitted' }
          format.json { render :show, status: :created, location: @marketing_product }
        else
          format.html { render :new }
          format.json { render json: @marketing_product.errors, status: :unprocessable_entity }
        end
      else
        format.html { render :new }
        format.json { render json: @marketing_product.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @marketing_product.update(marketing_product_params)
        format.html { redirect_to @marketing_product, notice: 'Marketing product was successfully updated.' }
        format.json { render :show, status: :ok, location: @marketing_product }
      else
        format.html { render :edit }
        format.json { render json: @marketing_product.errors, status: :unprocessable_entity }
      end
    end
  end

  def market_pdf
    @marketing_product = MarketingProduct.find(params[:id])
    @product = @marketing_product.product
    render :pdf => "Report Pdf", :layout => false, :template => "marketing_products/market_pdf"
  end

  def reject
    @product = Product.find_by(id: params[:marketing_product_id])
    if @product and @product.update(ignore: true)
       redirect_to marketing_index_path, notice: 'product rejected'
    else
       redirect_to marketing_index_path, notice: 'Unable to reject product'
    end
  end

  def destroy
    @marketing_product.destroy
    respond_to do |format|
      format.html { redirect_to marketing_products_url, notice: 'Marketing product was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_marketing_product
      @marketing_product = MarketingProduct.find(params[:id])
    end

    def marketing_product_params
      params.require(:marketing_product).permit(:first_order_date, :first_ship_date, :availability_date, :product_description, :serving_description, :ingredients_description, :benefits_description, :product_id)
    end
end
