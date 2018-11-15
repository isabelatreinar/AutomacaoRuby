
Dado('que desejo resgatar o produto {string}') do |produto|
    # Verifica se existem produtos no carrinho, se não houver realiza a pesquisa, se houver limpa o carrinho e depois pesquisa
    if  (@carrinho.qtde_carrinho).text == '0'
         @pesquisa.pesquisar(produto)   
    else @carrinho.limpar_carrinho
         @pesquisa.pesquisar(produto)
    end

end
  
Quando('realizo o resgate com os dados:') do |table|
    if find('.container-resgate-interno.modelo').visible? == true
        @produto.selecionar_variacao 
        @dados_compra = table.rows_hash       
    else
        @dados_compra = table.rows_hash
    end
    @produto.btn_resgatar.click
    if find('.boxcinza.carrinhoporbandeira.produtoindisponivel').visible? == true
        exit 
    else
    @carrinho.ultimo_radio_preco.click
    @carrinho.btn_concluir_pedido.click
    sleep(5)
    @checkout.finalizar_compra(@dados_compra)
    end
end
  
Então('visualizo a confirmacao e os detalhes do meu resgate na pagina') do
    pending # Write code here that turns the phrase above into concrete actions
end
  