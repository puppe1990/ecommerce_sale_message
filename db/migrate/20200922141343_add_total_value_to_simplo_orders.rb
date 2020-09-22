class AddTotalValueToSimploOrders < ActiveRecord::Migration[6.0]
  def change
    add_column :simplo_orders, :total_value, :float
  end
end
