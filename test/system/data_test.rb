require "application_system_test_case"

class DataTest < ApplicationSystemTestCase
  setup do
    @datum = data(:one)
  end

  test "visiting the index" do
    visit data_url
    assert_selector "h1", text: "Data"
  end

  test "creating a Datum" do
    visit data_url
    click_on "New Datum"

    fill_in "Brand", with: @datum.brand
    fill_in "Brand onwer", with: @datum.brand_onwer
    fill_in "Code", with: @datum.code
    fill_in "Country", with: @datum.country
    fill_in "Cpc description", with: @datum.cpc_description
    fill_in "Gross weight", with: @datum.gross_weight
    fill_in "Gtin", with: @datum.gtin
    check "Kosher" if @datum.kosher
    fill_in "Net weight", with: @datum.net_weight
    fill_in "Pack", with: @datum.pack
    fill_in "Pack description", with: @datum.pack_description
    click_on "Create Datum"

    assert_text "Datum was successfully created"
    click_on "Back"
  end

  test "updating a Datum" do
    visit data_url
    click_on "Edit", match: :first

    fill_in "Brand", with: @datum.brand
    fill_in "Brand onwer", with: @datum.brand_onwer
    fill_in "Code", with: @datum.code
    fill_in "Country", with: @datum.country
    fill_in "Cpc description", with: @datum.cpc_description
    fill_in "Gross weight", with: @datum.gross_weight
    fill_in "Gtin", with: @datum.gtin
    check "Kosher" if @datum.kosher
    fill_in "Net weight", with: @datum.net_weight
    fill_in "Pack", with: @datum.pack
    fill_in "Pack description", with: @datum.pack_description
    click_on "Update Datum"

    assert_text "Datum was successfully updated"
    click_on "Back"
  end

  test "destroying a Datum" do
    visit data_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Datum was successfully destroyed"
  end
end
