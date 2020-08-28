# frozen_string_literal: true

class OrdersController < ApplicationController
  def index
    @orders = []
    (1..5).each do |i|
      @order_page = HTTParty.get("https://purchasestore.com.br/ws/wspedidos.json?page=#{i}",
                                 headers: { content: 'application/json',
                                            Appkey: 'ZTgyYjMzZDJhMDVjMTVjZWM4OWNiMGU5NjI1NTNkYmU' })
      @order_page['result'].each do |order_page|
        @orders << order_page
      end
    end
  end

  def discount_message
    @bank_accounts = "Contas bancárias 
                      Itaú 
                      Ag 0187 
                      Conta 16334 0
                      Larissa rodrigues 
                      Conta corrente 
                      Cpf: 86377329091
                      
                      Banco do Brasill
                      Ag:1899-6
                      Conta corrente:49603-0
                      cpf:02399708024
                      Matheus Nunes Puppe
                      
                      Banrisul
                      Agência: 0062 
                      Conta:06.067524.0-2
                      Purchase Store
                      Cnpj: 33629.474/000156
                      Conta Corrente
                      
                      Caixa federal 
                      Ag 3775
                      Op 013
                      Conta 6446-1
                      Matheus Nunes Puppe 
                      CPF: 02399708024
                      
                      Santander 
                      Ag: 2124
                      CC: 130013193
                      Matheus Nunes Puppe
                      Purchase Store"
    @orders = []
    (1..5).each do |i|
      @order_page = HTTParty.get("https://purchasestore.com.br/ws/wspedidos.json?page=#{i}",
                                 headers: { content: 'application/json',
                                            Appkey: 'ZTgyYjMzZDJhMDVjMTVjZWM4OWNiMGU5NjI1NTNkYmU' })
      @order_page['result'].each do |order_page|
        @orders << order_page
      end
    end
  end

  def exchanges
    @orders = []
    (1..30).each do |i|
      @order_page = HTTParty.get("https://purchasestore.com.br/ws/wspedidos.json?page=#{i}",
                                 headers: { content: 'application/json',
                                            Appkey: 'ZTgyYjMzZDJhMDVjMTVjZWM4OWNiMGU5NjI1NTNkYmU' })
      @order_page['result'].each do |order_page|
        if order["Wspedido"]["pedidostatus_id"] != '24'
          @orders << order_page
        end
      end
    end
  end
end
