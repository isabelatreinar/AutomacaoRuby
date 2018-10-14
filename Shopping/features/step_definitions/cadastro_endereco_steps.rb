
Dado('que acessei minha conta') do
  page.refresh
  #temporário, só até ser corrigido o erro onde algumas vezes o cabeçalho com as informações do usuário logado não aparecem
  @endereco.topo.aguardar_informacoes_de_usuario
  @endereco.topo.btn_minha_conta.click
end

Quando('edito o meu endereco padrao com os dados:') do |table|
  @end_padrao = table.rows_hash
  @endereco.menu_lateral.btn_meus_enderecos.click
  @endereco.minha_conta.editarEndereco(@end_padrao)
end

Quando('adiciono um novo endereco com os dados:') do |table|
  @novo_end = table.rows_hash
  @endereco.menu_lateral.btn_meus_enderecos.click
  @endereco.minha_conta.adicionarEndereco(@novo_end)
end

Quando('tento cadastrar um endereco com campos obrigatorios vazios') do
  @endereco.menu_lateral.btn_meus_enderecos.click
  @endereco.minha_conta.btn_adicionar.click
  sleep(10)
  @endereco.minha_conta.btn_salvar.click
end

Então('visualizo as informacoes do meu endereco padrao em minha conta') do
  expect(@endereco.minha_conta.text).to have_content (@end_padrao['rua']).upcase #.upcase coloca em caixa alta o nome da rua, pois quando o endereço é salvo, o sistema coloca em caixa alta, mesmo inserindo com caixa baixa
end

Então('visualizo as informacoes do meu novo endereco em minha conta') do
  expect(@endereco.minha_conta.text).to have_content (@novo_end['rua']).upcase #.upcase coloca em caixa alta o nome da rua, pois quando o endereço é salvo, o sistema coloca em caixa alta, mesmo inserindo com caixa baixa
end

Então('visualizo a mensagem {string} nos campos') do |mensagem|
  expect(@endereco.minha_conta.msg_cep.text).to eql mensagem
  expect(@endereco.minha_conta.msg_rua.text).to eql mensagem
  expect(@endereco.minha_conta.msg_numero.text).to eql mensagem
  expect(@endereco.minha_conta.msg_bairro.text).to eql mensagem
  expect(@endereco.minha_conta.msg_estado.text).to eql mensagem
end
