Dado('que o usuario esta autenticado') do |table|
    #@user recebe os valores para autenticação do usuário, convertendo em chave-valor (rows_hash)
    @user = table.rows_hash
    #a variavel @result recebe o resultado da requisição POST
    @result=HTTParty.post(
        'http://preproducao.optemais.com.br/LoyaltyAPI/v1/api/autenticacao/token',
        headers: {'Content-Type' => 'application/x-www-form-urlencoded'},
        #o body recebe os dados do usuario sem conversão para json, pois esses dados serão passados no cabeçalho do body, no formato x-www...
        body: @user
    )
    #a variavel @token recebe o valor fixo 'Bearer ', mais o valor do token que está armazenado em acess_token, que aparece na resposta da requisição do token, converti para formato ruby com o comando 'parsed_response'
    @token = 'Bearer '+@result.parsed_response['access_token']
    #puts @result.response.body
  end
  
Dado('o usuario informou os seguintes dados:') do |table|
    #dados para o cadastro
    @dados = table.rows_hash
   
end
  
Quando('faço uma solicitacao post para o servico pre cadastro') do
    #@cadastro está recebendo o resultado da chamada post
    @cadastro = HTTParty.post(
        'http://preproducao.optemais.com.br/LoyaltyAPI/v1/api/clientes',
        #no header estou passando o token para autorização da chamada do método
        headers: {'Content-Type' => 'application/json', 'Authorization'=> @token},
        #o body recebe os dados para cadastro da tabela da feature em formato json
        body: @dados.to_json
        )
         #puts @cadastro.response.body
         #puts @cadastro.response.code
end
  
Então('o codigo http deve ser igual a {string}') do |status_code|
    #validando se o codigo de resposta é igual o codigo passado na feature
   expect(@cadastro.response.code).to eql status_code
end

Então('no corpo da resposta deve conter a mensagem {string}') do |message|
    #validado se no corpo da resposta tem a mensagem de sucesso que está na feature 
    expect(@cadastro.parsed_response).to eql message
  end
  