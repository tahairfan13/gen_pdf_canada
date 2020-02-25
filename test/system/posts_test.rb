require "application_system_test_case"

class PostsTest < ApplicationSystemTestCase
  setup do
    @post = posts(:one)
  end

  test "visiting the index" do
    visit posts_url
    assert_selector "h1", text: "Posts"
  end

  test "creating a Post" do
    visit posts_url
    click_on "New Post"

    fill_in "Brand", with: @post.brand
    fill_in "Brand onwer", with: @post.brand_onwer
    fill_in "Calories", with: @post.calories
    fill_in "Carbohydrate", with: @post.carbohydrate
    fill_in "Child nutrition", with: @post.child_nutrition
    fill_in "Cholesterol", with: @post.cholesterol
    fill_in "Code", with: @post.code
    fill_in "Country of origin", with: @post.country_of_origin
    fill_in "Fat", with: @post.fat
    fill_in "Gpc description", with: @post.gpc_description
    fill_in "Gross weight", with: @post.gross_weight
    fill_in "Gtin number", with: @post.gtin_number
    check "Kosher" if @post.kosher
    fill_in "Name", with: @post.name
    fill_in "Pack", with: @post.pack
    fill_in "Pack description", with: @post.pack_description
    fill_in "Protein", with: @post.protein
    fill_in "Serving size", with: @post.serving_size
    fill_in "Shelf life", with: @post.shelf_life
    fill_in "Shipping height", with: @post.shipping_height
    fill_in "Shipping length", with: @post.shipping_length
    fill_in "Shipping volumn", with: @post.shipping_volumn
    fill_in "Shipping width", with: @post.shipping_width
    fill_in "Sodium", with: @post.sodium
    fill_in "Storage", with: @post.storage
    click_on "Create Post"

    assert_text "Post was successfully created"
    click_on "Back"
  end

  test "updating a Post" do
    visit posts_url
    click_on "Edit", match: :first

    fill_in "Brand", with: @post.brand
    fill_in "Brand onwer", with: @post.brand_onwer
    fill_in "Calories", with: @post.calories
    fill_in "Carbohydrate", with: @post.carbohydrate
    fill_in "Child nutrition", with: @post.child_nutrition
    fill_in "Cholesterol", with: @post.cholesterol
    fill_in "Code", with: @post.code
    fill_in "Country of origin", with: @post.country_of_origin
    fill_in "Fat", with: @post.fat
    fill_in "Gpc description", with: @post.gpc_description
    fill_in "Gross weight", with: @post.gross_weight
    fill_in "Gtin number", with: @post.gtin_number
    check "Kosher" if @post.kosher
    fill_in "Name", with: @post.name
    fill_in "Pack", with: @post.pack
    fill_in "Pack description", with: @post.pack_description
    fill_in "Protein", with: @post.protein
    fill_in "Serving size", with: @post.serving_size
    fill_in "Shelf life", with: @post.shelf_life
    fill_in "Shipping height", with: @post.shipping_height
    fill_in "Shipping length", with: @post.shipping_length
    fill_in "Shipping volumn", with: @post.shipping_volumn
    fill_in "Shipping width", with: @post.shipping_width
    fill_in "Sodium", with: @post.sodium
    fill_in "Storage", with: @post.storage
    click_on "Update Post"

    assert_text "Post was successfully updated"
    click_on "Back"
  end

  test "destroying a Post" do
    visit posts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Post was successfully destroyed"
  end
end
