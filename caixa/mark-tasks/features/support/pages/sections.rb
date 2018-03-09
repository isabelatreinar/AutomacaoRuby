
class Navbar < SitePrism::Section
  element :menu_usuario, 'a[href="/user_settings dropdown-toggle"]'
  element :meu_perfil, 'a[href="/user_settings"]'
  element :sair, 'a[href$=logout]'

  def bye
    menu_usuario.click
    sair.click
  end
end