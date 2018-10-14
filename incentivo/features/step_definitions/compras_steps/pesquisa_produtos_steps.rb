Quando('realizo a pesquisa do produto {string}') do |produto|
    visit 'http://programarelacionamento.cartaoportoseguro.com.br/Catalogo/Catalogo/Produtos'
    @pesquisa.pesquisar(produto)
   # find('.desc',text: produto ).click
end
  
Então('visualizo as informacoes {string} na pagina') do |desc_produto|
    #page.assert_selector(@pesquisa.nome_produto, text: desc_produto, visible: true)
    #expect(page).to have_content(desc_produto)
   expect(@pesquisa.nome_produto.text).to have_content desc_produto

end
  