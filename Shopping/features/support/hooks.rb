Before do
  @cadastro = CadastroPage.new
  @login = LoginPage.new
  @pesquisa = PesquisaPage.new
  @endereco = EnderecoPage.new
  @conta = ContaPage.new
  @compra = CompraPage.new
  @teste = TesteLoginPage.new
  
end
=begin
Before('@testeCadastroreset') do
  visit 'https://marktasks.herokuapp.com/api/reset/flaviosm2003@hotmail.com?clean=full'
end

After('@testeCadastroLogout') do
  @abrirMenu = 'a[href="/user_settings dropdown-toggle"]'
  find(@abrirMenu).click
  @sair = 'a[href="/logout"]'
  find(@sair).click
end
=end
Before('@auth') do
  @login.load
  @login.logar('683.584.982-76', '123456')
end


After('@logout') do
  @login.topo.deslogar
end

After do |scenario|
  nome_cenario = scenario.name.tr(' ', '_').downcase! #downcase é para ficar em caixa baixa
  nome_cenario = nome_cenario.gsub(/([_@#!%()\-=;><,{}\~\[\]\.\/\?\"\*\^\$\+\-]+)/,'') #expressão regular do rby, substitui todos esses caracteres por espaço em branco para não dar erro na hora de gerar o nome do screenshot
  screenshot = "features/logs/shots/#{nome_cenario}.png"
  page.save_screenshot(screenshot)
  embed(screenshot, 'image/png', 'Clique aqui para ver a evidência') #para anexar o screenshot ao relatório
end