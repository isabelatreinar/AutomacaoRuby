
require_relative 'sections'

class CadastroPage < SitePrism::Page
  
  section :topo, Navbar, '.header-nav'

  element :input_nome,         '#nomeCadastro'
  element :input_cpf,          '#CpfCadastro'
  element :input_email,        '#emailCadastro'
  element :input_confir_email, '#confirmaEmailCadastro'
  element :input_senha,        '#senhaCadastro'
  element :combo_estado,       '#ufCadastro'
  element :combo_cidade,       '#cidadeCadastro'
  element :radio_sexo,         'input[value=F]'
  element :check_termo,        '#termoAceito'
  element :check_politica,     '#politicaAceita'
  element :btn_cadastrar,      '#btnEnviarCadastro'
  element :msg_erro,           '.validation-summary-errors ul'
  
  
  def cadastrar(dados)
    wait_until_input_cpf_visible
    #dados['nome'] = "#{dados['nome']} #{Faker::Lorem.characters(10)}"
    input_nome.set dados['nome']
    input_cpf.set dados['cpf']
    input_email.set dados['email']
    input_confir_email.set dados['conf_email']
    input_senha.set dados['senha']
    combo_estado.click
    combo_estado.find('option', text: dados['estado']).select_option
    combo_cidade.click
    combo_cidade.find('option', text: dados['cidade']).select_option
    radio_sexo.click
    check_termo.click
    check_politica.click
    btn_cadastrar.click
    sleep(3)
  end

  def cadastrarSemSexo(dados)
    input_nome.set dados['nome']
    input_cpf.set dados['cpf']
    input_email.set dados['email']
    input_confir_email.set dados['conf_email']
    input_senha.set dados['senha']
    combo_estado.click
    combo_estado.find('option', text: dados['estado']).select_option
    combo_cidade.click
    combo_cidade.find('option', text: dados['cidade']).select_option
    check_termo.click
    check_politica.click
    btn_cadastrar.click
    
  end

  def cadastrarSemTermo(dados)
    input_nome.set dados['nome']
    input_cpf.set dados['cpf']
    input_email.set dados['email']
    input_confir_email.set dados['conf_email']
    input_senha.set dados['senha']
    combo_estado.click
    combo_estado.find('option', text: dados['estado']).select_option
    combo_cidade.click
    combo_cidade.find('option', text: dados['cidade']).select_option
    radio_sexo.click
    check_politica.click
    btn_cadastrar.click
  end

  def cadastrarSemPolitica(dados)
    #dados['nome'] = "#{dados['nome']} #{Faker::Lorem.characters(10)}"
    input_nome.set dados['nome']
    input_cpf.set dados['cpf']
    input_email.set dados['email']
    input_confir_email.set dados['conf_email']
    input_senha.set dados['senha']
    combo_estado.click
    combo_estado.find('option', text: dados['estado']).select_option
    combo_cidade.click
    combo_cidade.find('option', text: dados['cidade']).select_option
    radio_sexo.click
    check_termo.click
    #check_politica.click
    btn_cadastrar.click
  end

  def cadastrarSemCidade(dados)
    #dados['nome'] = "#{dados['nome']} #{Faker::Lorem.characters(10)}"
    input_nome.set dados['nome']
    input_cpf.set dados['cpf']
    input_email.set dados['email']
    input_confir_email.set dados['conf_email']
    input_senha.set dados['senha']
    combo_estado.click
    combo_estado.find('option', text: dados['estado']).select_option
    radio_sexo.click
    check_termo.click
    btn_cadastrar.click
  end

end