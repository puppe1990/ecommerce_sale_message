class OrdersController < ApplicationController
    def index
      @orders = list_orders
    end

    private
    def list_orders
      uri = URI.parse("https://purchasestore.com.br/ws/wspedidos.json")
      request = Net::HTTP::Get.new(uri)
      request.content_type = "application/json"
      request["Appkey"] = "ZTgyYjMzZDJhMDVjMTVjZWM4OWNiMGU5NjI1NTNkYmU="
      request["Cache-Control"] = "no-cache"

      req_options = {
        use_ssl: uri.scheme == "https",
      }

      response = Net::HTTP.start(uri.hostname, uri.port, req_options) do |http|
        http.request(request)
      end

      # response.code
      JSON.parse(response.body)
    end
end
