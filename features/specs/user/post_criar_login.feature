#language: pt
Funcionalidade: Cadastrar usuario
    Sendo uma aplicação que recebeu dados do usuario    
    Posso solicitar uma requisição do tipo Post
    Para que os dados deste usuario sejam de fato cadastrados no sistema
@login
Cenário: Cadastro de Contatos
    Dado que o usuario informou os dados:
      | email      | aleluia@teste.com |
      | password |123456|
      | password_confirmation     |123456|

    Quando faço solicitacao post para o servico user
    Então codigo de resposta http deve ser igual a "201"
    E no corpo da resposta deve conter o id usuario