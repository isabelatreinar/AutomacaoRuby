
Dado('que o usuario informou os dados:') do |table|
    @user = table.rows_hash
    
   # HTTParty.delete(
   #     'http://api-de-tarefas.herokuapp.com/contacts'
   #     )
 end
 
Quando('faço solicitacao post para o servico user') do
   @result = HTTParty.post(
       'http://api-de-tarefas.herokuapp.com/users',
       headers: {'Content-Type' => 'application/json'},
       body: '{"user":' +"#{@user.to_json}"+'}'
      #body: @user.to_json
   )
end
 
 Então('codigo de resposta http deve ser igual a {string}') do |status_code|
   #expect(@result.response.code).to eql status_code
  puts '{"user":' +"#{@user.to_json}"+'}'
   puts @result.response.body
   puts @result.response.code
 end
 
 Então("no corpo da resposta deve conter o id usuario") do
    pending # Write code here that turns the phrase above into concrete actions
  end
  