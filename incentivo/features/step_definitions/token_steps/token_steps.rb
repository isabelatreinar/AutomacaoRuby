Dado('que acessei a url para gerar o token') do
    @token.load
end
  
Quando('chamo a url da Org solicitada com os dados {string}, {string} e {string}') do |cpf, senha, org|
    @token.chamarToken(cpf,senha,org)
end
  
Então('visualizo o site da Org para navegacao') do
    #switch_to_window windows.last #mudar para a última janela aberta, que nesse caso é a mesma da variável 'janela' que é o portal do incentivo aberto. Se eu não colocar esse comando volta para a janela do token que é a primeira aberta
        expect(page).to have_css '.logo-org'
    
end
  