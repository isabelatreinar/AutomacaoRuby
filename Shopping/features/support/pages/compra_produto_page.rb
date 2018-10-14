require_relative 'sections'
require_relative '../helper.rb'

class CompraPage < SitePrism::Page
  include Helper
  section :topo, Navbar, '.header-nav'
  element :produto, '[href="/Shopping/Catalogo/Produto/1/46/4962716/creme-para-assadura-huggies-turma-da-monica-infantil-90g"]', match: :first
  element :btn_comprar, '.btn.btn-primary.add-to-cart.btn-block.adicionar-ao-carrinho-detalhe-produto'
  element :btn_adc_carrinho, 'a[class="btn btn-secondary add-to-cart btn-block adicionar-ao-carrinho-detalhe-produto"]'
  element :btn_concluir_compra, 'input[class="concluir btn btn-primary btn-block"]'
  element :radio_endereco, '#endereco_1'
  element :input_titular, '#titular'
  element :btn_nao_utilizar_cartao, 'input[class*="btnNaoUtilizarTab2"]'
  element :input_cartao, '#numeroCartao'
  element :combo_mes, 'select[id="validadeMes"]'
  element :combo_ano, 'select[id="validadeAno"]'
  element :input_cvv, '#cvv'
  element :input_ddd, '#ddd'
  element :input_telefone, '#telefone'
  element :btn_parcelamento, '#btnConfirmarCartao'
  element :combo_parcelamento, 'select[id="opcoesPagamento_1"]'
  element :btn_pagar, '#btnPagar'
  element :qtde_produtos_carrinho, '.cart-products-count', match: :first
  
    def adc_carrinho
      wait_until_produto_visible
      produto.click 
      #se o carrinho não tiver produtos, então adiciona um produto (o while contorna um erro de clicar em adicionar e não adiciona)
      while (qtde_produtos_carrinho).text == '0' do
        btn_adc_carrinho.click
      end
      topo.btn_carrinho.click
      wait_for_ajax
      wait_until_btn_concluir_compra_visible
      btn_concluir_compra.click
      wait_for_ajax
      choose('2')#clica no radio button, na opcao '0' (zero) de confirmacao de endereco na pagina de checkout  para habilitar o preenchimento das opcoes de pagamento
      #choose#("0")           
      
    end

    def checkout(inf)
      wait_until_btn_nao_utilizar_cartao_visible
      btn_nao_utilizar_cartao.click
      btn_nao_utilizar_cartao.click #inseri o comnado para clicar no botão 2x pois uma não clica!
      wait_until_input_titular_visible
      input_titular.set inf['Titular']
      input_cartao.set inf['Cartao']
      combo_mes.find('option', text: inf['Validade_Mes']).select_option
      combo_ano.find('option', text: inf['Validade_Ano']).select_option
      input_cvv.set inf['Cod_Seguranca']
      input_ddd.set inf['DDD']
      input_telefone.set inf['Telefone']
      btn_parcelamento.click
      wait_until_combo_parcelamento_visible
      combo_parcelamento.find('option', text: inf['Parcelas']).select_option
      #btn_pagar.click
    end
end