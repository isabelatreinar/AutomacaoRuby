
class LoginPage < SitePrism::Page

  set_url '/'
  element :input_email, '#login_email'
  element :input_senha, 'input[name=password]'
  element :botao_logar, 'button[id*=btnLogin]'
  element :alert, '.alert-login'

  def logar(email, senha)
    input_email.set email
    input_senha.set senha
    botao_logar.click
  end
end