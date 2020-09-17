json.extract! simplo_order, :id, :order_id, :name, :order_date, :order_status, :telephone, :email, :created_at, :updated_at
json.url simplo_order_url(simplo_order, format: :json)
