require 'test_helper'

class SimploOrdersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @simplo_order = simplo_orders(:one)
  end

  test "should get index" do
    get simplo_orders_url
    assert_response :success
  end

  test "should get new" do
    get new_simplo_order_url
    assert_response :success
  end

  test "should create simplo_order" do
    assert_difference('SimploOrder.count') do
      post simplo_orders_url, params: { simplo_order: { email: @simplo_order.email, name: @simplo_order.name, order_date: @simplo_order.order_date, order_id: @simplo_order.order_id, order_status: @simplo_order.order_status, telephone: @simplo_order.telephone } }
    end

    assert_redirected_to simplo_order_url(SimploOrder.last)
  end

  test "should show simplo_order" do
    get simplo_order_url(@simplo_order)
    assert_response :success
  end

  test "should get edit" do
    get edit_simplo_order_url(@simplo_order)
    assert_response :success
  end

  test "should update simplo_order" do
    patch simplo_order_url(@simplo_order), params: { simplo_order: { email: @simplo_order.email, name: @simplo_order.name, order_date: @simplo_order.order_date, order_id: @simplo_order.order_id, order_status: @simplo_order.order_status, telephone: @simplo_order.telephone } }
    assert_redirected_to simplo_order_url(@simplo_order)
  end

  test "should destroy simplo_order" do
    assert_difference('SimploOrder.count', -1) do
      delete simplo_order_url(@simplo_order)
    end

    assert_redirected_to simplo_orders_url
  end
end
