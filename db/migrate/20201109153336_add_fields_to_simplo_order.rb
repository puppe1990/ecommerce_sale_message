class AddFieldsToSimploOrder < ActiveRecord::Migration[6.0]
  def change
    add_column :simplo_orders, :total_freight, :float
    add_column :simplo_orders, :total_products, :float
  end
end
