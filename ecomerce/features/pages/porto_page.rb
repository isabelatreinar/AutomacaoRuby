class PortoPage < SitePrism::Page

  set_url 'http://programarelacionamento.cartaoportoseguro.com.br/Catalogo/Categoria/Categoria/867/0/60/2/produtos/eletronicos-e-telefonia/dvds-e-blu-rays-player/'
  
  elements :botao_excluir, 'div.icoExcluirItemCarrinho > a'
  element :carrinho, 'a[href="/Catalogo/carrinho/index"]'
  elements :botao_excluir_dois, '.container-right > p'
  element :adicionar_carrinho, '.listagem-produtos > div:nth-child(2) .produto-acoes > button'
  elements :varios, '.listagem-produtos .produto-acoes > button'
  elements :table, 'table > tr > th'


# tr
#  nome    botao_adicionar   botao_excluir
 def teste
    #          0         1       2
    # lista = [botao1, botao 2, botao3]
    varios.each do |lista|
       if table.text == 'bruno'
        table.find('botao_excluir').click
       end
    end

    varios[10].click

  end
end
