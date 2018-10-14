Dado('que eu acessei a página de cadastro') do
  visit '/Conta/Login'
  @login.btn_fecha_popup.click #fechar popup inicial da página
  @login.btn_cadastro.click
end

Dado('possuo os seguintes dados:') do |table|
  @dados = table.rows_hash
end

Quando('faço o meu cadastro') do
  @cadastro.cadastrar(@dados)
end

Quando('faço o meu novo cadastro') do
  @cadastro.cadastrar(@dados)
  page.refresh
end

Quando('faço o meu cadastro sem selecionar o sexo') do
  @cadastro.cadastrarSemSexo(@dados)
end

Quando('faço o meu cadastro sem aceitar os termos') do
  @cadastro.cadastrarSemTermo(@dados)
end

Quando('faço o meu cadastro sem aceitar a politica de privacidade') do
  @cadastro.cadastrarSemPolitica(@dados)
end

Quando('faço o meu cadastro sem selecionar uma cidade') do                    
  @cadastro.cadastrarSemCidade(@dados)
end                                                                           
                                                                              
Então('sou cadastrado com sucesso') do
  @cadastro.topo.aguardar_informacoes_de_usuario
  expect(@cadastro.topo.nome_logado.text).to eql 'LUCIANA'
end

Então('devo ver a mensagem de erro para sexo nao selecionado') do |table|
  @msg = table.rows_hash
  @cadastro.msg_erro.has_text?(@msg['alerta'])
end

Então('devo ver a mensagem de erro para termos nao aceitos') do |table|
  @msg_termo = table.rows_hash
  @cadastro.msg_erro.has_text?(@msg_termo['alerta'])
end

Então('devo ver a mensagem de erro para politica nao aceita') do |table|
  @msg_polit = table.rows_hash
  @cadastro.msg_erro.has_text?(@msg_polit['alerta']) 
end

Então('devo ver a mensagem de erro para cidade nao selecionada') do |table|
  @msg_cidade = table.rows_hash
  @cadastro.msg_erro.has_text?(@msg_cidade['alerta'])
end

Então('devo ver a mensagem de erro {string}') do |mensagem_erro|
  @cadastro.msg_erro.has_text?(mensagem_erro)
end









