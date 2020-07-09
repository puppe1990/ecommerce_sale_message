class OrderStore < ApplicationRecord

	def self.list_orders
		for i in 1..12
  			@orders = HTTParty.get("https://purchasestore.com.br/ws/wspedidos.json?page=#{i}",
               headers: { content: 'application/json',
                          Appkey: 'ZTgyYjMzZDJhMDVjMTVjZWM4OWNiMGU5NjI1NTNkYmU' })
			@orders["result"].each do |order|
				if order["Wspedido"]["pedidostatus_id"] != '24' && order["Wspedido"]["pedidostatus_id"] != '1' && order["Wspedido"]["pedidostatus_id"] != '4'
					OrderStore.create(status: order["Wspedido"]["pedidostatus_id"], value: order["Wspedido"]["total_pedido"], order_date: order["Wspedido"]["data_pedido"])
				end
			end
		end
	end
end


