Dado('que estou autenticado com {string} e {string}') do |email,senha|
 
  @login.load
  @login.logar(email, senha)
end

Dado('acesso o meu perfil') do
  @tarefas.nav.menu_usuario.click
  @tarefas.nav.meu_perfil.click
end

Quando('completo o meu cadastro com empresa {string} e {string}') do |empresa, cargo|
  @perfil.atualiza(empresa,cargo)
end

Então('vejo a mensagem {string}') do |mensagem|
  expect(@perfil.formulario).to have_content mensagem
end