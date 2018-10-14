
Dado('que acessei a pagina de login') do
  @login.load
  #@login.btn_fecha_popup_alternativo.click
  #@login.btn_fecha_popup.click
end

Quando('faço login com {string} e {string}') do |cpf, senha|
  @login.logar(cpf, senha)
end

Então('sou autenticado com sucesso') do
  page.refresh #a pagina demora a carregar, as vezes não aparece o cabeçalho com os dados, por isso o refresh da página
  #expect(page).to have_content 'LUCIANA'
  #@login.topo.aguardar_informacoes_de_usuario
  #find(:css,'.close').click
  expect(@login.topo.nome_logado.text).to eql 'LUCIANA'
end

Então('não sou autenticado') do
  expect(page).to have_no_content 'LUCIANA'
end
  
Então('devo ver a mensagem {string}') do |mensagem_alerta|
  
  expect(@login.msg_usuario_invalido.text).to eql mensagem_alerta
end

Então('não sou autenticado porque nao tenho informacoes suficientes') do
  expect(page).to have_no_content 'LUCIANA'
end
  
Então('devo ver a mensagem de alerta {string}') do |mensagem_alerta|
  expect(@login.msg_usuario_invalido.text).to eql mensagem_alerta
end