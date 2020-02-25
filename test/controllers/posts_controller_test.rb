require 'test_helper'

class PostsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @post = posts(:one)
  end

  test "should get index" do
    get posts_url
    assert_response :success
  end

  test "should get new" do
    get new_post_url
    assert_response :success
  end

  test "should create post" do
    assert_difference('Post.count') do
      post posts_url, params: { post: { brand: @post.brand, brand_onwer: @post.brand_onwer, calories: @post.calories, carbohydrate: @post.carbohydrate, child_nutrition: @post.child_nutrition, cholesterol: @post.cholesterol, code: @post.code, country_of_origin: @post.country_of_origin, fat: @post.fat, gpc_description: @post.gpc_description, gross_weight: @post.gross_weight, gtin_number: @post.gtin_number, kosher: @post.kosher, name: @post.name, pack: @post.pack, pack_description: @post.pack_description, protein: @post.protein, serving_size: @post.serving_size, shelf_life: @post.shelf_life, shipping_height: @post.shipping_height, shipping_length: @post.shipping_length, shipping_volumn: @post.shipping_volumn, shipping_width: @post.shipping_width, sodium: @post.sodium, storage: @post.storage } }
    end

    assert_redirected_to post_url(Post.last)
  end

  test "should show post" do
    get post_url(@post)
    assert_response :success
  end

  test "should get edit" do
    get edit_post_url(@post)
    assert_response :success
  end

  test "should update post" do
    patch post_url(@post), params: { post: { brand: @post.brand, brand_onwer: @post.brand_onwer, calories: @post.calories, carbohydrate: @post.carbohydrate, child_nutrition: @post.child_nutrition, cholesterol: @post.cholesterol, code: @post.code, country_of_origin: @post.country_of_origin, fat: @post.fat, gpc_description: @post.gpc_description, gross_weight: @post.gross_weight, gtin_number: @post.gtin_number, kosher: @post.kosher, name: @post.name, pack: @post.pack, pack_description: @post.pack_description, protein: @post.protein, serving_size: @post.serving_size, shelf_life: @post.shelf_life, shipping_height: @post.shipping_height, shipping_length: @post.shipping_length, shipping_volumn: @post.shipping_volumn, shipping_width: @post.shipping_width, sodium: @post.sodium, storage: @post.storage } }
    assert_redirected_to post_url(@post)
  end

  test "should destroy post" do
    assert_difference('Post.count', -1) do
      delete post_url(@post)
    end

    assert_redirected_to posts_url
  end
end
