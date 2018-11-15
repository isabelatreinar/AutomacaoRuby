
class ProdutoPage < SitePrism::Page

    element :btn_resgatar, '.btn-restagar-produto.btnDetalheProdutoSubmit'
    element :combo_opcoes, '.opcoes-resgate > select'

    def selecionar_variacao
        combo_opcoes.find('option:nth-child(2)').select_option
    end

end
