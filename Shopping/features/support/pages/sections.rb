
class Navbar < SitePrism::Section
    
    element :btn_login, 'a[href="/Shopping/Conta/Login"]'
    element :nome_logado, '.user-info span[class="nome-usuario"]'
    element :btn_sair, 'a[href="/Shopping/Conta/Login/Sair"]'
    element :btn_minha_conta, 'a[href="/Shopping/Conta/Usuario/MinhaConta"]'
    element :btn_carrinho, 'a[href="/Shopping/Checkout/Carrinho"]'
    
    def aguardar_informacoes_de_usuario
        wait_until_nome_logado_visible
    end

    def deslogar
        btn_sair.click
    end
    
end

class MenuDadosCliente < SitePrism::Section

    element :btn_meus_enderecos, 'a[href="/Shopping/Conta/Usuario/MeusEnderecos"]'
    element :btn_inf_conta, 'a[href="/Shopping/Conta/Usuario/MinhaConta"]'

end


