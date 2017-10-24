
require "/Users/alexandrelino/SpeechTest/tests/speechTestAPI/transcriber_2"
request = Transcriber::async_request
operation = Transcriber::get_operation(request.name)
resultados = operation.response["results"]
if resultados.kind_of?(Array)    
    #puts resultado[0]
    resultados.each { |resultado| puts "RETORNO DA API: #{resultado}" }
else
    puts resultados
end