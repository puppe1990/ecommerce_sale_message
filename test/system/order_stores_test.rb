require "application_system_test_case"

class OrderStoresTest < ApplicationSystemTestCase
  setup do
    @order_store = order_stores(:one)
  end

  test "visiting the index" do
    visit order_stores_url
    assert_selector "h1", text: "Order Stores"
  end

  test "creating a Order store" do
    visit order_stores_url
    click_on "New Order Store"

    fill_in "Order date", with: @order_store.order_date
    fill_in "Status", with: @order_store.status
    fill_in "Value", with: @order_store.value
    click_on "Create Order store"

    assert_text "Order store was successfully created"
    click_on "Back"
  end

  test "updating a Order store" do
    visit order_stores_url
    click_on "Edit", match: :first

    fill_in "Order date", with: @order_store.order_date
    fill_in "Status", with: @order_store.status
    fill_in "Value", with: @order_store.value
    click_on "Update Order store"

    assert_text "Order store was successfully updated"
    click_on "Back"
  end

  test "destroying a Order store" do
    visit order_stores_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Order store was successfully destroyed"
  end
end
