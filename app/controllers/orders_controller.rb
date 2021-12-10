# frozen_string_literal: true

class OrdersController < ApplicationController

  def index
    @status_code = {'Seu pedido foi criado com sucesso! Aguardamos o pagamento' => '1', 
                    'Aguardando Pagamento' => '24',
                    'Solicitação de troca ou devolução' => '29',
                    'Pago' => '2',
                    'Sendo fabricado para ser enviado em Porto Alegre' => '31',
                    'Sendo fabricado para ser enviado em São Paulo' => '30',
                    'Agendado para entrega pelo motoboy!' => '33',
                    'Disponível para ser Retirado em Mãos' => '32',
                    'Enviado' => '23',
                    'Entregue' => '3',
                    'Cancelado' => '4'
                  }
  end

  def immediate_delivery
    @status_code = {'Seu pedido foi criado com sucesso! Aguardamos o pagamento' => '1', 
                    'Aguardando Pagamento' => '24',
                    'Solicitação de troca ou devolução' => '29',
                    'Pago' => '2',
                    'Sendo fabricado para ser enviado em Porto Alegre' => '31',
                    'Sendo fabricado para ser enviado em São Paulo' => '30',
                    'Agendado para entrega pelo motoboy!' => '33',
                    'Disponível para ser Retirado em Mãos' => '32',
                    'Enviado' => '23',
                    'Entregue' => '3',
                    'Cancelado' => '4'
                  }
  end

  def motoboy
    @status_code = {'Seu pedido foi criado com sucesso! Aguardamos o pagamento' => '1', 
                    'Aguardando Pagamento' => '24',
                    'Solicitação de troca ou devolução' => '29',
                    'Pago' => '2',
                    'Sendo fabricado para ser enviado em Porto Alegre' => '31',
                    'Sendo fabricado para ser enviado em São Paulo' => '30',
                    'Agendado para entrega pelo motoboy!' => '33',
                    'Disponível para ser Retirado em Mãos' => '32',
                    'Enviado' => '23',
                    'Entregue' => '3',
                    'Cancelado' => '4'
                  }
  end

  def filter_index
    @order_status = params['order_status']
    @status_code = {'Seu pedido foi criado com sucesso! Aguardamos o pagamento' => '1', 
                    'Aguardando Pagamento' => '24',
                    'Solicitação de troca ou devolução' => '29',
                    'Pago' => '2',
                    'Sendo fabricado para ser enviado em Porto Alegre' => '31',
                    'Sendo fabricado para ser enviado em São Paulo' => '30',
                    'Agendado para entrega pelo motoboy!' => '33',
                    'Disponível para ser Retirado em Mãos' => '32',
                    'Enviado' => '23',
                    'Entregue' => '3',
                    'Cancelado' => '4'
                  }
  end

  def discount_message
    @status_code = {'Seu pedido foi criado com sucesso! Aguardamos o pagamento' => '1', 
      'Aguardando Pagamento' => '24',
      'Solicitação de troca ou devolução' => '29',
      'Pago' => '2',
      'Sendo fabricado para ser enviado em Porto Alegre' => '31',
      'Sendo fabricado para ser enviado em São Paulo' => '30',
      'Agendado para entrega pelo motoboy!' => '33',
      'Disponível para ser Retirado em Mãos' => '32',
      'Enviado' => '23',
      'Entregue' => '3',
      'Cancelado' => '4'
    }
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
  end

  def filter_discount_message
    @order_status = params['order_status']
    @status_code = {'Seu pedido foi criado com sucesso! Aguardamos o pagamento' => '1', 
      'Aguardando Pagamento' => '24',
      'Solicitação de troca ou devolução' => '29',
      'Pago' => '2',
      'Sendo fabricado para ser enviado em Porto Alegre' => '31',
      'Sendo fabricado para ser enviado em São Paulo' => '30',
      'Agendado para entrega pelo motoboy!' => '33',
      'Disponível para ser Retirado em Mãos' => '32',
      'Enviado' => '23',
      'Entregue' => '3',
      'Cancelado' => '4'
    }
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
  end

  def update_order_status
    # byebug
    SimploOrder.integrate_order_items(params['query'])
    redirect_to root_path
  end
end
