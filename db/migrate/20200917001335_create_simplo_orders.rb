class CreateSimploOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :simplo_orders do |t|
      t.string :order_id
      t.string :name
      t.datetime :order_date
      t.string :order_status
      t.string :telephone
      t.string :email

      t.timestamps
    end
  end
end
