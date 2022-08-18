require 'test_helper'

class BidProductsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bid_product = bid_products(:one)
  end

  test "should get index" do
    get bid_products_url
    assert_response :success
  end

  test "should get new" do
    get new_bid_product_url
    assert_response :success
  end

  test "should create bid_product" do
    assert_difference('BidProduct.count') do
      post bid_products_url, params: { bid_product: { bid_id: @bid_product.bid_id, product_id: @bid_product.product_id, quantity: @bid_product.quantity, unit_id: @bid_product.unit_id } }
    end

    assert_redirected_to bid_product_url(BidProduct.last)
  end

  test "should show bid_product" do
    get bid_product_url(@bid_product)
    assert_response :success
  end

  test "should get edit" do
    get edit_bid_product_url(@bid_product)
    assert_response :success
  end

  test "should update bid_product" do
    patch bid_product_url(@bid_product), params: { bid_product: { bid_id: @bid_product.bid_id, product_id: @bid_product.product_id, quantity: @bid_product.quantity, unit_id: @bid_product.unit_id } }
    assert_redirected_to bid_product_url(@bid_product)
  end

  test "should destroy bid_product" do
    assert_difference('BidProduct.count', -1) do
      delete bid_product_url(@bid_product)
    end

    assert_redirected_to bid_products_url
  end
end
