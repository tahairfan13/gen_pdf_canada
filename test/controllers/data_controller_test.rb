require 'test_helper'

class DataControllerTest < ActionDispatch::IntegrationTest
  setup do
    @datum = data(:one)
  end

  test "should get index" do
    get data_url
    assert_response :success
  end

  test "should get new" do
    get new_datum_url
    assert_response :success
  end

  test "should create datum" do
    assert_difference('Datum.count') do
      post data_url, params: { datum: { brand: @datum.brand, brand_onwer: @datum.brand_onwer, code: @datum.code, country: @datum.country, cpc_description: @datum.cpc_description, gross_weight: @datum.gross_weight, gtin: @datum.gtin, kosher: @datum.kosher, net_weight: @datum.net_weight, pack: @datum.pack, pack_description: @datum.pack_description } }
    end

    assert_redirected_to datum_url(Datum.last)
  end

  test "should show datum" do
    get datum_url(@datum)
    assert_response :success
  end

  test "should get edit" do
    get edit_datum_url(@datum)
    assert_response :success
  end

  test "should update datum" do
    patch datum_url(@datum), params: { datum: { brand: @datum.brand, brand_onwer: @datum.brand_onwer, code: @datum.code, country: @datum.country, cpc_description: @datum.cpc_description, gross_weight: @datum.gross_weight, gtin: @datum.gtin, kosher: @datum.kosher, net_weight: @datum.net_weight, pack: @datum.pack, pack_description: @datum.pack_description } }
    assert_redirected_to datum_url(@datum)
  end

  test "should destroy datum" do
    assert_difference('Datum.count', -1) do
      delete datum_url(@datum)
    end

    assert_redirected_to data_url
  end
end
