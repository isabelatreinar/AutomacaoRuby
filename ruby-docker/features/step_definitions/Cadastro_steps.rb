Dado('que estou na pagina de cadastro') do
  @cadastro.goToUrl
end
  
Dado('possuo os seguintes dados') do |table|
  @dados = table.rows_hash
end
  
Quando("realizo o cadastro do usuario") do
  @cadastro.cadastroUsuario(@dados)
  @cadastro.clickCriar
end
  
Então("visualizo a mensagem de sucesso {string}") do |mensagemSucesso|
  expect(@cadastro.text_mensagem.text).to eql mensagemSucesso
end
