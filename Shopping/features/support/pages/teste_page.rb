require_relative 'sections'

class TesteLoginPage < SitePrism::Page

  element :entre,  '[href="/slogin"]'
  element :email, '#input-type-1'
  element :possuoconta, '#optYesclient'
  element :senha, '#input-type-4'
  element :entrar,'#btn_Entrar'
  element :pesquisa, '#sli_search_1'
  element :buscar,'button[title="Buscar"]', match: :first
  element :texto, '.info-holder', match: :first

  def logarCentauro
    #wait_until_input_cpf
    entre.click
    email.set 'thiagoreiner@yahoo.com.br'
    possuoconta.click
    senha.set 'sistemas'
    entrar.click

  end

  def pesquisar
    pesquisa.set 'tênis asics gel'
    buscar.click

  end
end