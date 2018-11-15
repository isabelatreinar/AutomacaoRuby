require_relative 'sections'

class CarrinhoPage < SitePrism::Page

    section :topo, Navbar, 'header[class="principal"]'
    element :opcao_pgto, '.opcPgto'
    element :btn_esvaziar_carrinho, 'a[href="/IncentivoOperacional/Carrinho/LimparCarrinho"]'
    element :qtde_carrinho, '#itensCarrinho'
    #.carrinho-direita é o pai, e ul em diante sao os filhos
    element :ultimo_radio_preco, '.carrinho-direita > ul:nth-child(2) > li:nth-child(3) > label > input'
    element :btn_concluir_pedido, '.btnConfirmarCarrinho.btn.btn-cta.concluir-pedido.botao-salvar'
    
    def adc_prod_carrinho(produto)

        
    end

    def limpar_carrinho
        topo.link_carrinho.hover
        topo.finalizar_compra.click
        btn_esvaziar_carrinho.click
    end

end