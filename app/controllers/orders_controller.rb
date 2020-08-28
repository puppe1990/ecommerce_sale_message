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
    @bank_accounts = "Contas bancárias \n
                      Itaú \n
                      Ag 0187 \n
                      Conta 16334 0\n
                      Larissa rodrigues \n
                      Conta corrente \n
                      Cpf: 86377329091\n
                      \n
                      Banco do Brasill\n
                      Ag:1899-6\n
                      Conta corrente:49603-0\n
                      cpf:02399708024\n
                      Matheus Nunes Puppe\n
                      \n
                      Banrisul\n
                      Agência: 0062 \n
                      Conta:06.067524.0-2\n
                      Purchase Store\n
                      Cnpj: 33629.474/000156\n
                      Conta Corrente\n
                      \n
                      Caixa federal \n
                      Ag 3775\n
                      Op 013\n
                      Conta 6446-1\n
                      Matheus Nunes Puppe \n
                      CPF: 02399708024\n
                      \n
                      Santander \n
                      Ag: 2124\n
                      CC: 130013193\n
                      Matheus Nunes Puppe\n
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
    (1..35).each do |i|
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
