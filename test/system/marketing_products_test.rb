require "application_system_test_case"

class MarketingProductsTest < ApplicationSystemTestCase
  setup do
    @marketing_product = marketing_products(:one)
  end

  test "visiting the index" do
    visit marketing_products_url
    assert_selector "h1", text: "Marketing Products"
  end

  test "creating a Marketing product" do
    visit marketing_products_url
    click_on "New Marketing Product"

    fill_in "", with: @marketing_product.
    fill_in "Availability date", with: @marketing_product.availability_date
    fill_in "Benefits description", with: @marketing_product.benefits_description
    fill_in "First order date", with: @marketing_product.first_order_date
    fill_in "First ship date", with: @marketing_product.first_ship_date
    fill_in "Ingredients description", with: @marketing_product.ingredients_description
    fill_in "Product", with: @marketing_product.product
    fill_in "Serving description", with: @marketing_product.serving_description
    fill_in "User", with: @marketing_product.user
    click_on "Create Marketing product"

    assert_text "Marketing product was successfully created"
    click_on "Back"
  end

  test "updating a Marketing product" do
    visit marketing_products_url
    click_on "Edit", match: :first

    fill_in "", with: @marketing_product.
    fill_in "Availability date", with: @marketing_product.availability_date
    fill_in "Benefits description", with: @marketing_product.benefits_description
    fill_in "First order date", with: @marketing_product.first_order_date
    fill_in "First ship date", with: @marketing_product.first_ship_date
    fill_in "Ingredients description", with: @marketing_product.ingredients_description
    fill_in "Product", with: @marketing_product.product
    fill_in "Serving description", with: @marketing_product.serving_description
    fill_in "User", with: @marketing_product.user
    click_on "Update Marketing product"

    assert_text "Marketing product was successfully updated"
    click_on "Back"
  end

  test "destroying a Marketing product" do
    visit marketing_products_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Marketing product was successfully destroyed"
  end
end
