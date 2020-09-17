class SimploOrder < ApplicationRecord
  def self.integrate_order_items
    @order_page = HTTParty.get("https://purchasestore.com.br/ws/wspedidos.json",
                                headers: { content: 'application/json',
                                Appkey: 'ZTgyYjMzZDJhMDVjMTVjZWM4OWNiMGU5NjI1NTNkYmU' })
    (1..@order_page['pagination']['page_count']).each do |i|
      @order_page = HTTParty.get("https://purchasestore.com.br/ws/wspedidos.json?page=#{i}",
                                 headers: { content: 'application/json',
                                            Appkey: 'ZTgyYjMzZDJhMDVjMTVjZWM4OWNiMGU5NjI1NTNkYmU' })
      @order_page['result'].each do |order_page|
        begin
          order = SimploOrder.find_by(order_id: order_page['Wspedido']['numero'])
          if order.nil?
            SimploOrder.create(name: order_page['Wspedido']['cliente_razaosocial'], 
                               order_id: order_page['Wspedido']['numero'],
                               order_status: order_page['Wspedido']['pedidostatus_id'],
                               telephone: order_page["Wspedido"]["cliente_telefone"],
                               email: order_page["Wspedido"]["cliente_email"],
                               order_date: Time.parse(order_page['Wspedido']['data_pedido']))
          else
            order.update(order_status: order_page['Wspedido']['pedidostatus_id']) if order.order_status != order_page['Wspedido']['pedidostatus_id']
          end
        rescue ArgumentError
          puts 'erro'
        end
      end
    end
  end
end
