
class AcessoTokenPage < SitePrism::Page
  set_url '/'
  element :btn_acessar_com_token, '#loginToken'
  element :btn_acessar, '#btnAcessarDesenv'
  element :barra_menu, '.navbarMenu'

  def acessarComToken
    btn_acessar_com_token.click
    btn_acessar.click
  end

end