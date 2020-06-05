class CreateOrderStores < ActiveRecord::Migration[6.0]
  def change
    create_table :order_stores do |t|
      t.float :value
      t.string :status
      t.datetime :order_date

      t.timestamps
    end
  end
end
