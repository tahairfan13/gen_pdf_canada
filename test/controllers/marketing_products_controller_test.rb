require 'test_helper'

class MarketingProductsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @marketing_product = marketing_products(:one)
  end

  test "should get index" do
    get marketing_products_url
    assert_response :success
  end

  test "should get new" do
    get new_marketing_product_url
    assert_response :success
  end

  test "should create marketing_product" do
    assert_difference('MarketingProduct.count') do
      post marketing_products_url, params: { marketing_product: { : @marketing_product., availability_date: @marketing_product.availability_date, benefits_description: @marketing_product.benefits_description, first_order_date: @marketing_product.first_order_date, first_ship_date: @marketing_product.first_ship_date, ingredients_description: @marketing_product.ingredients_description, product: @marketing_product.product, serving_description: @marketing_product.serving_description, user: @marketing_product.user } }
    end

    assert_redirected_to marketing_product_url(MarketingProduct.last)
  end

  test "should show marketing_product" do
    get marketing_product_url(@marketing_product)
    assert_response :success
  end

  test "should get edit" do
    get edit_marketing_product_url(@marketing_product)
    assert_response :success
  end

  test "should update marketing_product" do
    patch marketing_product_url(@marketing_product), params: { marketing_product: { : @marketing_product., availability_date: @marketing_product.availability_date, benefits_description: @marketing_product.benefits_description, first_order_date: @marketing_product.first_order_date, first_ship_date: @marketing_product.first_ship_date, ingredients_description: @marketing_product.ingredients_description, product: @marketing_product.product, serving_description: @marketing_product.serving_description, user: @marketing_product.user } }
    assert_redirected_to marketing_product_url(@marketing_product)
  end

  test "should destroy marketing_product" do
    assert_difference('MarketingProduct.count', -1) do
      delete marketing_product_url(@marketing_product)
    end

    assert_redirected_to marketing_products_url
  end
end
