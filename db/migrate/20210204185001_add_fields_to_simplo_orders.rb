class AddFieldsToSimploOrders < ActiveRecord::Migration[6.0]
  def change
    add_column :simplo_orders, :entrega_logradouro, :string
    add_column :simplo_orders, :cliente_cpfcnpj, :string
    add_column :simplo_orders, :entrega_numero, :string
    add_column :simplo_orders, :entrega_bairro, :string
    add_column :simplo_orders, :entrega_cidade, :string
    add_column :simplo_orders, :entrega_estado, :string
    add_column :simplo_orders, :envio_servico, :string
    add_column :simplo_orders, :nota_fiscal, :string
    add_column :simplo_orders, :cliente_informacoes_adicionais, :string
  end
end
