# frozen_string_literal: true

class OrdersController < ApplicationController
  def index
    @send_orders = []
    list_orders
  end

  private

  def list_orders
    @orders = []
    (1..5).each do |i|
      @order_page = HTTParty.get("https://purchasestore.com.br/ws/wspedidos.json?page=#{i}",
                                 headers: { content: 'application/json',
                                            Appkey: 'ZTgyYjMzZDJhMDVjMTVjZWM4OWNiMGU5NjI1NTNkYmU' })
      @order_page['result'].each do |order_page|
        @orders << order_page
      end
    end
  end
end
