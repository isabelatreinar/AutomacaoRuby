
#language: pt
Quando('faço login com {string} e {string}') do |email, senha|
  @email = email

  @login.load
  @login.logar(email, senha)
end
  
Então('sou autenticado com sucesso') do
  expect(@tarefas.nav.menu_usuario.text).to eql @email
end
  
Então('vejo o meu painel de atividades') do
  expect(@tarefas.titulo.text).to eql 'Painel de Atividades'
end

Então('devo ver a mensagem {string}') do |mensagem_alerta|
  expect(@login.alert.text).to eql mensagem_alerta
end

Então('não sou autenticado') do
  expect(@tarefas.has_no_titulo?).to be false
end