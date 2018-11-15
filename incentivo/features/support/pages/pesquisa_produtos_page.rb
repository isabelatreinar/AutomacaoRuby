
class PesquisaPage < SitePrism::Page

    element :input_busca, '#txttermo'
    elements :seleciona_produto, '.desc'
    #, match: :first
    element :btn_resgatar, '.btn-restagar-produto.btnDetalheProdutoSubmit'
    element :nome_produto, '.cabecalho-produto'

    def pesquisar(prod)
        wait_until_input_busca_visible
        input_busca.set prod
        #espera ate que o produto apareça na lista de produtos trazidos na digitação do produto
        wait_until_seleciona_produto_visible
        seleciona_produto[1].click
        #  seleciona_produto.each do |a| 
                # a[3].click
        # end
    end

end