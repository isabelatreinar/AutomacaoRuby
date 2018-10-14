
Quando('solicito a exclusao de um endereço cadastrado') do
    @endereco.menu_lateral.btn_meus_enderecos.click
    @endereco.minha_conta.removerEndereco
    #   click_button 'Deletar'
    #Foi necessário inserir esse comando de clicar no botão  no steps, pois dentro do método de exclusão no site prism não funciona!
    @btn_deletar = '#btnDeleteEndereco'
    find(@btn_deletar).click
end
  
Então('o endereço eh excluido da lista dos meus endereços') do
    pending # Write code here that turns the phrase above into concrete actions
end
