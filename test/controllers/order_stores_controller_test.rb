require 'test_helper'

class OrderStoresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @order_store = order_stores(:one)
  end

  test "should get index" do
    get order_stores_url
    assert_response :success
  end

  test "should get new" do
    get new_order_store_url
    assert_response :success
  end

  test "should create order_store" do
    assert_difference('OrderStore.count') do
      post order_stores_url, params: { order_store: { order_date: @order_store.order_date, status: @order_store.status, value: @order_store.value } }
    end

    assert_redirected_to order_store_url(OrderStore.last)
  end

  test "should show order_store" do
    get order_store_url(@order_store)
    assert_response :success
  end

  test "should get edit" do
    get edit_order_store_url(@order_store)
    assert_response :success
  end

  test "should update order_store" do
    patch order_store_url(@order_store), params: { order_store: { order_date: @order_store.order_date, status: @order_store.status, value: @order_store.value } }
    assert_redirected_to order_store_url(@order_store)
  end

  test "should destroy order_store" do
    assert_difference('OrderStore.count', -1) do
      delete order_store_url(@order_store)
    end

    assert_redirected_to order_stores_url
  end
end
