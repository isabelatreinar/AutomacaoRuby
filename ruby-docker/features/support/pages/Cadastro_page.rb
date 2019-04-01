class Cadastro_Page < SitePrism::Page


    element :input_nome, '#user_name'
    element :input_ultimoNome, '#user_lastname'
    element :input_email, '#user_email'
    element :input_endereco, '#user_address'
    element :input_universidade, '#user_university'
    element :input_profissao, '#user_profile'
    element :input_genero, '#user_gender'
    element :input_idade, '#user_age'
    element :btn_criar, 'input[name=commit]'
    element :text_mensagem, '#notice'
  
    def goToUrl
      visit 'users/new'
    end
  
    def cadastroUsuario(dados)
      input_nome.set dados['Nome']
      input_ultimoNome.set dados['UltimoNome']
      input_email.set dados['Email']
      input_endereco.set dados['Endereco']
      input_universidade.set dados['Universidade']
      input_profissao.set dados['Profissao']
      input_genero.set dados['Genero']
      input_idade.set dados['Idade']
    end 
  
    def clickCriar
      btn_criar.click
    end 
  
  end
  