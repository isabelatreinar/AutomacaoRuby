
Dado('que o usuario informou os seguintes dados:') do |table|
     @user = table.rows_hash
     
    # HTTParty.delete(
    #     'http://api-de-tarefas.herokuapp.com/contacts'
    #     )
  end
  
Quando('faço uma solicitacao post para o servico user') do
    @result = HTTParty.post(
        'http://api-de-tarefas.herokuapp.com/contacts',
        headers: {'Content-Type' => 'application/json'},
        #body: '{"user":' +"#{@user.to_json}"+'}'
       body: @user.to_json
    )
end
  
  Então('o codigo de resposta http deve ser igual a {string}') do |status_code|
    expect(@result.response.code).to eql status_code
    puts @result.response.body
    puts @result.response.code
  end
  
Então('no corpo da resposta deve conter o id do usuario') do
    #converter de json para formato ruby para que eu consiga pegar o id e comparar. Como no QUando eu converti para json, nesse momento a variavel @result está no formato json, então tenho q converter novamente para ruby!
     puts @result.parsed_response['data']
     #está validando se dentro do objeto data tem o campo id
     expect(@result.parsed_response['data']).to have_key('id')
     #validar se o tamannho do id é 2 - primeiro passo data, depois id, pois id vem depois de data no objeto
     expect(@result.parsed_response['data']['id'].length).to eql 2
end
  

Então("no corpo da resposta devo ver uma mensagem {string}") do |message|
  pending # Write code here that turns the phrase above into concrete actions
end
