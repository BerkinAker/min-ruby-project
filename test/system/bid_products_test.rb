require "application_system_test_case"

class BidProductsTest < ApplicationSystemTestCase
  setup do
    @bid_product = bid_products(:one)
  end

  test "visiting the index" do
    visit bid_products_url
    assert_selector "h1", text: "Bid Products"
  end

  test "creating a Bid product" do
    visit bid_products_url
    click_on "New Bid Product"

    fill_in "Bid", with: @bid_product.bid_id
    fill_in "Product", with: @bid_product.product_id
    fill_in "Quantity", with: @bid_product.quantity
    fill_in "Unit", with: @bid_product.unit_id
    click_on "Create Bid product"

    assert_text "Bid product was successfully created"
    click_on "Back"
  end

  test "updating a Bid product" do
    visit bid_products_url
    click_on "Edit", match: :first

    fill_in "Bid", with: @bid_product.bid_id
    fill_in "Product", with: @bid_product.product_id
    fill_in "Quantity", with: @bid_product.quantity
    fill_in "Unit", with: @bid_product.unit_id
    click_on "Update Bid product"

    assert_text "Bid product was successfully updated"
    click_on "Back"
  end

  test "destroying a Bid product" do
    visit bid_products_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Bid product was successfully destroyed"
  end
end
