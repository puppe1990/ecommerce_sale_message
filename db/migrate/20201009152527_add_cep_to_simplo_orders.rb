class AddCepToSimploOrders < ActiveRecord::Migration[6.0]
  def change
    add_column :simplo_orders, :cep, :string
  end
end
