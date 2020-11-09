class AddTotalDiscountToSimploOrder < ActiveRecord::Migration[6.0]
  def change
    add_column :simplo_orders, :total_discount, :float
  end
end
