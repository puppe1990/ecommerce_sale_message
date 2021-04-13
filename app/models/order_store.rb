class OrderStore < ApplicationRecord

	def self.list_orders
		for i in 1..20
  		@orders = HTTParty.get("https://purchasestore.com.br/ws/wspedidos.json?page=#{i}?data_inicio=2021-04-01",
               headers: { content: 'application/json',
                          Appkey: 'ZTgyYjMzZDJhMDVjMTVjZWM4OWNiMGU5NjI1NTNkYmU' })
			@orders["result"].each do |order|
				if order["Wspedido"]["pedidostatus_id"] != '24' && order["Wspedido"]["pedidostatus_id"] != '1' && order["Wspedido"]["pedidostatus_id"] != '4' #vendas diárias
				# if order["Wspedido"]["pedidostatus_id"] == '23' || order["Wspedido"]["pedidostatus_id"] == '30'
					# if order["Wspedido"]['pagamento_forma'] != 'Depósito Bancário' #pagarme
						OrderStore.create(status: order["Wspedido"]["pedidostatus_id"], value: order["Wspedido"]["total_pedido"], order_date: order["Wspedido"]["data_pedido"])
					# end
				end
			end
		end
	end
end


