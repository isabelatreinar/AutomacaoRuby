
Dado('que desejo resgatar o produto {string}') do |produto|
    @prod = produto
    # Verifica se existem produtos no carrinho, se não houver realiza a pesquisa, se houver limpa o carrinho e depois pesquisa
    if  (@carrinho.qtde_carrinho).text == '0'
         @pesquisa.pesquisar(produto)   
    else @carrinho.limpar_carrinho
         @pesquisa.pesquisar(produto)
    end
end
  
Quando('realizo o resgate com os dados:') do |table|
    @dados_compra = table.rows_hash

    #se a opção de seleção da variação (peso,tamanho, quantidade, etc) aparecer então vai selecionar a variação
    if page.has_css?('.modelo')
      @produto.selecionar_variacao 
      byebug
      sleep(5)
      @dados_compra = table.rows_hash       
    elsif page.has_no_css?('.modelo')
      @produto.btn_resgatar.click
      sleep(5)
    end
    
    # @carrinho.ultimo_radio_preco.click
    # @carrinho.btn_concluir_pedido.click
    # # byebug
    # if find('.boxcinza.carrinhoporbandeira.produtoindisponivel').visible? == true
    #     @carrinho.btn_esvaziar_carrinho.click
    #     @pesquisa.pesquisar_outro(@prod)
    #     @produto.selecionar_variacao  
    #     @produto.btn_resgatar.click
    #     @carrinho.ultimo_radio_preco.click
    #     @carrinho.btn_concluir_pedido.click
    #     sleep(20)
    #     @checkout.finalizar_compra(@dados_compra)
    #     # exit 
    # elsif find('.boxcinza.carrinhoporbandeira.produtoindisponivel').visible? == false
    #     sleep(20)
    #     @checkout.finalizar_compra(@dados_compra)
    # end
end
  
Então('visualizo a confirmacao e os detalhes do meu resgate na pagina') do
    pending # Write code here that turns the phrase above into concrete actions
end
  