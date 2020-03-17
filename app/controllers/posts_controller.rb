class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy, :get_pdf]
  before_action :authenticate_user!

  def index
    @posts = Post.all
  end

  def show
  end

  def new
    @post = Post.new
  end

  def edit
  end

  def create
    @post = Post.new(post_params)
    @post.user = current_user
    respond_to do |format|
      if @post.save
        format.html { redirect_to @post, notice: 'Post was successfully created.' }
        format.json { render :show, status: :created, location: @post }
      else
        format.html { render :new }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  def get_pdf
    render :pdf => "Report Pdf", :layout => false, :template => "/posts/my_pdf"
  end

  def update
    respond_to do |format|
      if @post.update(post_params)
        format.html { redirect_to @post, notice: 'Post was successfully updated.' }
        format.json { render :show, status: :ok, location: @post }
      else
        format.html { render :edit }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @post.destroy
    respond_to do |format|
      format.html { redirect_to posts_url, notice: 'Post was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_post
      @post = Post.find(params[:id])
    end

    def post_params
      params.require(:post).permit(:product_id, :pack, :pack_description, :brand, :brand_onwer, :gpc_description, :gross_weight, :country_of_origin, :kosher, :child_nutrition, :shipping_length, :shipping_width, :shipping_height, :shipping_volumn, :shelf_life, :storage, :serving_size, :calories, :fat, :cholesterol, :sodium, :carbohydrate, :protein, :availability_date, :first_order_date, :first_ship_date, :product_description_english, :serving_description_english, :ingredients_description_english, :benefits_description_english)
    end
end
