#language: pt

Funcionalidade: Cadastro
	Sendo um cliente que deseja comprar produtos
	Posso fazer meu cadastro no Opte+
	Para poder realizar as minhas compras

Contexto: Cadastro
    Dado que eu acessei a página de cadastro

@cadastro @logout
Cenário: Cadastro simples
    
    E possuo os seguintes dados:
      | nome              | Luciana Oliveira             |
      | cpf               | 823.636.017-26               |
      | email             | isabela.goncalves@csu.com.br |
      | conf_email        | isabela.goncalves@csu.com.br |
      | senha             | 123456                       |
      | estado            | Minas Gerais                 |
      | cidade            | BELO HORIZONTE               |
      | sexo              | FEMININO                     |
    Quando faço o meu novo cadastro
    Então sou cadastrado com sucesso

@validar_sexo
Cenário: Validar obrigatoriedade de sexo

    E possuo os seguintes dados:
      | nome              | Luciana Oliveira             |
      | cpf               | 024.521.519-04               |
      | email             | isabela.goncalves@csu.com.br |
      | conf_email        | isabela.goncalves@csu.com.br |
      | senha             | 123456                       |
      | estado            | Minas Gerais                 |
      | cidade            | BELO HORIZONTE               |
    Quando faço o meu cadastro sem selecionar o sexo
    Então devo ver a mensagem de erro para sexo nao selecionado
      | alerta | Selecione o gênero do usuário |
    
@validar_termos
Cenário: Validar obrigatoriedade de aceitacao de termos e condicoes

    E possuo os seguintes dados:
      | nome              | Luciana Oliveira             |
      | cpf               | 024.521.519-04               |
      | email             | isabela.goncalves@csu.com.br |
      | conf_email        | isabela.goncalves@csu.com.br |
      | senha             | 123456                       |
      | estado            | Minas Gerais                 |
      | cidade            | BELO HORIZONTE               |
    Quando faço o meu cadastro sem aceitar os termos
    Então devo ver a mensagem de erro para termos nao aceitos
      | alerta | É necessário aceitar os termos e condições |
    

@validar_politica
Cenário: Validar obrigatoriedade de aceitacao de politicas

    E possuo os seguintes dados:
      | nome              | Luciana Oliveira             |
      | cpf               | 024.521.519-04               |
      | email             | isabela.goncalves@csu.com.br |
      | conf_email        | isabela.goncalves@csu.com.br |
      | senha             | 123456                       |
      | estado            | Minas Gerais                 |
      | cidade            | BELO HORIZONTE               |
    Quando faço o meu cadastro sem aceitar a politica de privacidade
    Então devo ver a mensagem de erro para politica nao aceita
      | alerta | É necessário aceitar a política de privacidade |

#criei um cenario só para cidade pois no metodo cadastrar existe um clique em cidade, e como é selecionado o estado antes não existe a opção vazia, com isso criei um metodo que não clica no combo cidade
@validar_cidade
Cenário: Validar obrigatoriedade de selecao de cidade

    E possuo os seguintes dados:
      | nome              | Luciana Oliveira             |
      | cpf               | 024.521.519-04               |
      | email             | isabela.goncalves@csu.com.br |
      | conf_email        | isabela.goncalves@csu.com.br |
      | senha             | 123456                       |
      | estado            | Minas Gerais                 |
      | cidade            | BELO HORIZONTE               |
    Quando faço o meu cadastro sem selecionar uma cidade
    Então devo ver a mensagem de erro para cidade nao selecionada
      | alerta | A Cidade deve ser preenchida. |


@validacao_cadastro
Esquema do Cenario: Validacoes em Cadastro

    E possuo os seguintes dados:
      | nome       | <nome>       |
      | cpf        | <cpf>        |
      | email      | <email>      |
      | conf_email | <conf_email> |
      | senha      | <senha>      |
      | estado     | <estado>     |
      | cidade     | <cidade>     |
      | sexo       | <sexo>       |
    Quando faço o meu cadastro
    Então devo ver a mensagem de erro '<alerta>'

    Exemplos:
      | nome      | cpf            | email              | conf_email         | senha | estado       | cidade | sexo     | alerta                                                      |
      |           | 831.104.380-97 | isabela@csu.com.br | isabela@csu.com.br | 123   | Minas Gerais | BETIM  | FEMININO | É necessário informar o nome                                |
      | Ana Carla |                | isabela@csu.com.br | isabela@csu.com.br | 123   | Minas Gerais | BETIM  | FEMININO | O CPF deve ser preenchido.                                  |
      | Ana Carla | 831.104.380-97 |                    | isabela@csu.com.br | 123   | Minas Gerais | BETIM  | FEMININO | É necessário informar o e-mail                              |
      | Ana Carla | 831.104.380-97 | isabela@csu.com    | isabela@csu.com.br | 123   | Minas Gerais | BETIM  | FEMININO | A confirmação de e-mail não confere com o e-mail informado. |  
      | Ana Carla | 831.104.380-97 | isabela@csu.com.br | isabela@csu.com.br |       | Minas Gerais | BETIM  | FEMININO | É necessário informar a senha                               |  
      | Ana Carla | 831.104.380-97 | isabela@csu.com.br | isabela@csu.com.br | 123   | Selecione    |        | FEMININO | O Estado deve ser preenchido.                               |
      


    
