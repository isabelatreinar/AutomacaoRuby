require_relative 'sections'

#classe section, ao clicar em editar é aberta uma nova página pertencente ao endereço, uma subclasse, por isso uma section de endereço    
class Adicionar < SitePrism::Section

    element :btn_editar,        '.btnEditar', match: :first
    element :input_cep,         '#cep'
    element :input_rua,         '#rua'
    element :input_numero,      '#numero'
    element :input_complemento, '#complemento'
    element :input_bairro,      '#bairro'
    element :input_estado,      '#uf'
    element :input_cidade,      '#cidade'
    element :input_referencia,  '#referencia'
    element :btn_salvar,        '#btnAdicionarEditar'
    element :check_padrao,      '#EnderecoPadrao'
    element :btn_adicionar,     '#btnNovoEndereco'   
    element :msg_cep,           '#cep-error'
    element :msg_rua,           '#rua-error'
    element :msg_numero,        '#numero-error'
    element :msg_bairro,        '#bairro-error'
    element :msg_estado,        '#uf-error'
    element :btn_excluir,       '.btnDeletar', match: :first
    #element :btn_confirmacao,   '.btn.btn-secondary'
    

    def removerEndereco
        btn_excluir.click
        #within('.modal-footer') do
        #btn_confirmacao.hover
        #btn_confirmacao.click
        #find_button('Cancelar').click
        #end        
    end

    def editarEndereco(dados)
        btn_editar.click
        sleep(5)
        input_cep.send_keys [:control, 'a'], :space #apagar valor do campo com selecionando o campo com ctrl+a e clicando em espaço
        input_cep.set dados['cep']
        input_numero.set dados['numero']
        input_complemento.set dados['complemento']
        #input_estado.find('option', text: dados['estado']).select_option
        #input_cidade.find('option', text: dados['cidade']).select_option
        input_referencia.set dados['referencia']
        btn_salvar.click
        
    end

    def adicionarEndereco(dados)

        btn_adicionar.click
        sleep(5)
        input_cep.set dados['cep']
        check_padrao.click
        #input_rua.set dados['rua']
        input_numero.set dados['numero']
        input_complemento.set dados['complemento']
        #input_bairro.set dados['bairro']
        #input_estado.find('option', text: dados['estado']).select_option
        #input_cidade.find('option', text: dados['cidade']).select_option
        input_referencia.set dados['referencia']
        btn_salvar.click
        sleep(2)
    end

    

end

class EnderecoPage < SitePrism::Page

    section :topo, Navbar, '.header-nav'
    section :minha_conta, Adicionar, '#MinhaConta' #MinhaConta é o elemento que corresponde à area onde tem o menu lateral e os dados do endereço
    section :menu_lateral, MenuDadosCliente, '#CategoriasEsq'
end