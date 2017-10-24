

  Quando("faco a requisição") do
    @request = @transcriber.request
  end
  
  Quando("retorna o nome da operação") do
    @operation = @transcriber.operation(@request.name)    
  end
  
  Então("exibo o resultado") do
    @operation.response["results"]
  end