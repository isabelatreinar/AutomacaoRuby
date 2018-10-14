
class TokenPage < SitePrism::Page

   set_url '/'

   element :usuario, '#Usuario'
   element :senha, '#Senha'
   element :btn_entrar, '.btn.btn-primary.btn-block.btn-lg'
   element :btn_chamar, 'button[type=submit]'

    def chamarToken(cpf,password,org)
        usuario.set cpf
        senha.set password
        combo_org = find('select[id=CodigoOrganizacao]')
        combo_org.find('option', text: org).select_option
        btn_entrar.click
        # within('.jconfirm-buttons') do
        #find('button[class="btn background-image success"]').click
        # end
    janela = window_opened_by do    #a variável 'janela' recebe a janela aberta pelo clique no botão 'btn_chamar'
        wait_for_btn_chamar
        btn_chamar.click
    end
    #muda de foco para a janela         
    within_window janela do #mudar o foco para a janela aberta, que nesse caso é 'janela', que foi aberta acima pelo botão 'btn_chamar'
        #expect(current_url).to eql 'http://preproducao.optemais.com.br/IncentivoOperacional/Catalogo/Produtos'
        #find('button[class="btn background-image success"]').click #esse botão é um popup que aparece no ambiente de pp
        #janela.close     
    end  
    #mudar para a última janela aberta, que nesse caso é a mesma da variável 'janela' que é o portal do incentivo aberto. Se eu não colocar esse comando volta para a janela do token que é a primeira aberta 
    switch_to_window windows.last     
end  
   
end
