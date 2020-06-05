# frozen_string_literal: true

class OrdersController < ApplicationController
  def index
    @orders = list_orders
  end  

  def index2
    @orders = list_orders2
  end

  private

  def list_orders
    HTTParty.get('https://purchasestore.com.br/ws/wspedidos.json?page=1',
                 headers: { content: 'application/json',
                            Appkey: 'ZTgyYjMzZDJhMDVjMTVjZWM4OWNiMGU5NjI1NTNkYmU' })
  end  

  def list_orders2
    HTTParty.get('https://purchasestore.com.br/ws/wspedidos.json?page=2',
                 headers: { content: 'application/json',
                            Appkey: 'ZTgyYjMzZDJhMDVjMTVjZWM4OWNiMGU5NjI1NTNkYmU' })
  end
end
