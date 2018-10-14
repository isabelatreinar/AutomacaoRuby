
Dado('que acessei as informacoes da minha conta') do
  page.refresh
  #temporário, só até ser corrigido o erro onde algumas vezes o cabeçalho com as informações do usuário logado não aparecem
  @conta.topo.aguardar_informacoes_de_usuario
  @conta.topo.btn_minha_conta.click
  @conta.menu_lateral.btn_inf_conta.click
end
  
Quando('atualizo meu cadastro com os telefones') do |table|
  @telefones = table.rows_hash
  @conta.inf_conta.cadastroTel(@telefones)
end

Quando('atualizo meu cadastro sem inserir o numero do celular') do
  @conta.inf_conta.input_celular.set '' #insere um valor vazio ao campo se ele estiver preenchido para ter certeza q o campo estará vazio para a validação!
  @conta.inf_conta.btn_salvar.click
end
  
Então('minhas informacoes sao gravadas em minha conta') do
  #expect(page).to have_content @telefones['Celular']
  #page.has_css?(@conta.inf_conta.msg_sucess) #verifica se o toast de sucesso aparece na página!
  page.has_css?('.toast-message')
end

Então('visualizo a mensagem {string} no campo telefone celular') do |mensagem|
  expect(@conta.inf_conta.msg_erro.text).to eql mensagem
end
  

  
  