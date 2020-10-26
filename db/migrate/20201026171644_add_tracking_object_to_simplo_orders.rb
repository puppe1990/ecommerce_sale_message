class AddTrackingObjectToSimploOrders < ActiveRecord::Migration[6.0]
  def change
    add_column :simplo_orders, :tracking_object, :string
  end
end
