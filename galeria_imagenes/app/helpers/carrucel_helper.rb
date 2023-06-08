module CarrucelHelper
    require "uri"  
    require "net/http"
    require 'json'

    def req_api_get url_in

        url = URI(url_in)  
        https = Net::HTTP.new(url.host, url.port)
        https.use_ssl = true
        request = Net::HTTP::Get.new(url)
        response = https.request(request)  
    
        return response
    end

    def valor_uf

        resp = req_api_get("https://mindicador.cl/api")
        resultado = JSON.parse(resp.read_body)
        arreglo = resultado.to_a
        arreglo1 = arreglo[3].to_a
        hash1 = arreglo1[1]
        hash1["valor"]
    end


    def valor_pedido1

        resp = req_api_get("https://mindicador.cl/api")
        resultado = JSON.parse(resp.read_body)
        arreglo = resultado.to_a
        arreglo1 = arreglo[5].to_a
        hash1 = arreglo1[1]
        hash1["valor"]
    end

    def valor_pedido2

        resp = req_api_get("https://mindicador.cl/api")
        resultado = JSON.parse(resp.read_body)
        arreglo = resultado.to_a
        arreglo1 = arreglo[6].to_a
        hash1 = arreglo1[1]
        hash1["valor"]
    end

    
end
