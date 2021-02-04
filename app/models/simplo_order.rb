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
                               cliente_cpfcnpj: order_page['Wspedido']['cliente_cpfcnpj'],
                               entrega_logradouro: order_page['Wspedido']['entrega_logradouro'],
                               entrega_numero: order_page['Wspedido']['entrega_numero'],
                               entrega_bairro: order_page['Wspedido']['entrega_bairro'],
                               entrega_cidade: order_page["Wspedido"]["entrega_cidade"],
                               entrega_estado: order_page["Wspedido"]["entrega_estado"],
                               cliente_informacoes_adicionais: order_page["Wspedido"]["cliente_informacoes_adicionais"],
                               envio_servico: order_page["Wspedido"]["envio_servico"],
                               nota_fiscal: order_page["Wspedido"]["numero"],
                               telephone: order_page["Wspedido"]["cliente_telefone"],
                               cep: order_page["Wspedido"]["entrega_cep"],
                               email: order_page["Wspedido"]["cliente_email"],
                               order_date: Time.parse(order_page['Wspedido']['data_pedido']),
                               total_freight: order_page["Wspedido"]["total_frete"],
                               total_products: order_page["Wspedido"]["total_produtos"],
                               total_discount: order_page["Wspedido"]["total_descontos"],
                               total_value: order_page["Wspedido"]["total_pedido"],
                               tracking_object: order_page["Wspedido"]["envio_codigo_objeto"])
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
