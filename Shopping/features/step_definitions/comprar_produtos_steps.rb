
Dado('que adicionei o produto {string} no carrinho') do |produto|
  @pesquisa.pesquisar(produto)
  @compra.adc_carrinho
      
end

Quando('preencho os dados de compra com:') do |table|
  @inf_compra = table.rows_hash
  @compra.checkout(@inf_compra)
  sleep(10)

end
  
Então('visualizo a confirmacao da minha compra') do
  
  #page.find('#endereco_0').visible?.should be_true
  #page.has_css('#endereco_0')
end
  
 #find(:id, '#endereco_0').click
  #find(:id => "endereco_0", :value => "0").check
  #within('#accordionEntrega') do
  #choose('#endereco_0')
  #find('a[href="#collapseNovoEndereco"]').click
  #find(:css, "#endereco_0[value='0']").set('1')
  #find(:css, 'input[class="form-check-input pull-right"]').choose
  #choose('input[class="form-check-input pull-right"]', visible: false)
  #find(:class,'input[class="form-check-input pull-right"]').click
  

  #find(:xpath, '//*[@id="endereco_0"]').click
  #choose '#endereco_0'
  #end
  #browser.radio(:value, '1').set
  #page.choose('#endereco_0')
  
  # @pesquisa.pesquisar(produto)
  # @listagem.produto.click
  # @listagem.btn_comprar.click
 
  # find('a[class="btn btn-secondary add-to-cart btn-block adicionar-ao-carrinho-detalhe-produto"]').click
  # page.refresh
  # find('a[href="/Shopping/Checkout/Carrinho"]').click
  # @carrinho.btn_concluir_compra.click

  #find('#Quantidades').click
  #click_button 'Comprar'
  
  #find('[href="/Shopping/Catalogo/Produto/1/46/4962716/creme-para-assadura-huggies-turma-da-monica-infantil-90g"]').click
  # @listagem.btn_comprar.click
    #find(:css, "#cityID[value='62']").set(true)
  #@radio = 'input[class="form-check-input pull-right"]'
    #page.find(:radio_button, '#endereco_0').set(true)
