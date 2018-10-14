
Dado('que estou logado no Opte+') do
  page.refresh #inserido esse comando para atualizar a página até o erro da apresentação do cabeçalho ser corrigido - mantis 26150 (filha SHOPPING)
  @pesquisa.topo.aguardar_informacoes_de_usuario
  expect(@pesquisa.topo.nome_logado.text).to eql 'LUCIANA'
end
  
Quando('realizo a pesquisa do produto {string}') do |produto|
  @pesquisa.pesquisar(produto)   
end
    
Então('visualizo as informacoes {string} na pagina') do |descricao|
  expect(@pesquisa.produto.text).to eql descricao
  #@pesquisa.produto.has_text?(descricao) 
    #expect(page).to have_content 'FERRO DE PASSAR 1500W DURATHON HAMILTON '

end
  