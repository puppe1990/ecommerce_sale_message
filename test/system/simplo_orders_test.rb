require "application_system_test_case"

class SimploOrdersTest < ApplicationSystemTestCase
  setup do
    @simplo_order = simplo_orders(:one)
  end

  test "visiting the index" do
    visit simplo_orders_url
    assert_selector "h1", text: "Simplo Orders"
  end

  test "creating a Simplo order" do
    visit simplo_orders_url
    click_on "New Simplo Order"

    fill_in "Email", with: @simplo_order.email
    fill_in "Name", with: @simplo_order.name
    fill_in "Order date", with: @simplo_order.order_date
    fill_in "Order", with: @simplo_order.order_id
    fill_in "Order status", with: @simplo_order.order_status
    fill_in "Telephone", with: @simplo_order.telephone
    click_on "Create Simplo order"

    assert_text "Simplo order was successfully created"
    click_on "Back"
  end

  test "updating a Simplo order" do
    visit simplo_orders_url
    click_on "Edit", match: :first

    fill_in "Email", with: @simplo_order.email
    fill_in "Name", with: @simplo_order.name
    fill_in "Order date", with: @simplo_order.order_date
    fill_in "Order", with: @simplo_order.order_id
    fill_in "Order status", with: @simplo_order.order_status
    fill_in "Telephone", with: @simplo_order.telephone
    click_on "Update Simplo order"

    assert_text "Simplo order was successfully updated"
    click_on "Back"
  end

  test "destroying a Simplo order" do
    visit simplo_orders_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Simplo order was successfully destroyed"
  end
end
