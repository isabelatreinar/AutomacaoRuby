
require_relative 'sections'

class LoginPage < SitePrism::Page

  set_url '/Conta/Login'
  section :topo, Navbar, '.header-nav'

  element :btn_fecha_popup,             '.close'
  element :btn_fecha_popup_alternativo,  '.overlay-main .close' #fecha popup 'Não vá ainda...'
  element :btn_cadastro,                '#btn-cadastre-fase1'
  element :input_cpf,            '#Cpf'
  element :input_senha,          '#Senha'
  element :btn_entrar,           '#btnEntrar'
  element :msg_usuario_invalido, '.retornoerro'
  element :input_cpf_recupera,   '[name=CPF]'
  element :input_email_recupera, '#Email'
  element :btn_enviar_senha,     '#btnEnviar'
  element :btn_esqueci_senha,    '#btn-esqueci-senha'
  element :link_esqueci_senha,   '#btn-esqueci-senha'
  element :msg_sucesso_email,    '.toast-message'

  def logar(cpf, senha)
    wait_until_btn_fecha_popup_visible
    btn_fecha_popup.click
    input_cpf.set cpf
    input_senha.set senha
    btn_entrar.click 
    wait_for_ajax
    
  end

  def recupera_senha(cpf, email)
    link_esqueci_senha.hover #posiciona o mouse em cima do campo
    link_esqueci_senha.click
    input_cpf_recupera.click
    input_cpf_recupera.set cpf
    input_email_recupera.click
    input_email_recupera.set email
    btn_enviar_senha.click
  end

 
end