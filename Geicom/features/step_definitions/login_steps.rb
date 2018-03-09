Dado('que eu acessei a página do Sigres') do
  @acesso.load
end
  
Quando('acesso o sistema com token') do
  @acesso.acessarComToken
end
  
Então('sou autenticado com sucesso') do
  dados_usuario = '.dados p'
  expect(page).to have_css dados_usuario, text: 'Isabela de Oliveira' #page.find(:css, '.dados p').first/ find(:css, '.dados p').first
end
  
Então('sou redirecionado para a tela inicial') do
  barra_menu = '.navbarMenu'
  expect(page).to have_css barra_menu
end