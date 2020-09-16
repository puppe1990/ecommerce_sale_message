# frozen_string_literal: true

class OrdersController < ApplicationController
  def index
    @orders = []
    (1..4).each do |i|
      @order_page = HTTParty.get("https://purchasestore.com.br/ws/wspedidos.json?page=#{i}",
                                 headers: { content: 'application/json',
                                            Appkey: 'ZTgyYjMzZDJhMDVjMTVjZWM4OWNiMGU5NjI1NTNkYmU' })
      @order_page['result'].each do |order_page|
        @orders << order_page
      end
    end
  end

  def discount_message
    @bank_accounts = "%0aContas bancárias:%0a
                      Itaú %0a
                      Ag: 0187 %0a
                      Conta: 16334-0%0a
                      Larissa rodrigues %0a
                      Conta corrente %0a
                      CPF: 86377329091%0a
                      %0a
                      Banco do Brasill%0a
                      Ag:1899-6%0a
                      Conta corrente:49603-0 %0a
                      CPF:02399708024 %0a
                      Matheus Nunes Puppe %0a
                      %0a
                      Banrisul%0a
                      Agência: 0062 %0a
                      Conta:06.067524.0-2 %0a
                      Purchase Store %0a
                      CNPJ: 33629.474/000156 %0a
                      Conta Corrente %0a
                      %0a
                      Caixa federal  %0a
                      Ag 3775 %0a
                      Op 013 %0a
                      Conta 6446-1 %0a
                      Matheus Nunes Puppe  %0a
                      CPF: 02399708024 %0a
                      %0a
                      Santander %0a
                      Ag: 2124 %0a
                      CC: 130013193 %0a
                      Matheus Nunes Puppe %0a
                      Purchase Store%0a"
    @orders = []
    (1..12).each do |i|
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
