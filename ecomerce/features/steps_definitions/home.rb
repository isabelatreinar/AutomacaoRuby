Quando("cadastro o produto {string}") do |string|
    @home = Home.new
    @produto = Produto.new
    @carrinho = Carrinho.new
    @home.load
    @home.buscar_produto
    @produto.resgate.click
    @carrinho.ultimo_radio.click
   # buscar_por_texto_e_clicar('.desc', string)
end
  
Entao("eu verifico") do

end