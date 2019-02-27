#language: pt

Funcionalidade: Cadastrar usuario
    Sendo uma aplicação que recebeu dados do usuario    
    Posso solicitar uma requisição do tipo Post
    Para que os dados deste usuario sejam de fato cadastrados no sistema

Cenário: Cadastro de Contatos
    Dado que o usuario informou os seguintes dados:
     
      | name      | Tereza           |
      | last-name | Cristina         |
      | email     | tqssaasaaza@gmail.com |
      | age       | 28               |
      | phone     | 21984759575      |
      | address   | Rua dois         |
      | state     | Minas Gerais     |
      | city      | Belo Horizonte   |
    
    Quando faço uma solicitacao post para o servico user
    Então o codigo de resposta http deve ser igual a "201"
    E no corpo da resposta deve conter o id do usuario
@cadastro
Esquema do Cenário: Campos não enviados
    Dado que o usuario informou os seguintes dados:
      | name      | <name>      |
      | last-name | <last_name> |
      | email     | <email>     |
      | age       | <age>       |
      | phone     | <phone>     |
      | address   | <address>   |
      | state     | <state>     |
      | city      | <city>      |
    Quando faço uma solicitacao post para o servico user
    Então o codigo de resposta http deve ser igual a "<status_code>"
    E no corpo da resposta devo ver uma mensagem "<message>"

    Exemplos: 
      | name   | last-name | email              | age | phone       | address  | state        | city           | status_code | mensagem                 |
      |        | Cristina  | teaareza@gmail.com | 28  | 21984759575 | Rua dois | Minas Gerais | Belo Horizonte | 422         | não pode ficar em branco |
      | Tereza | Cristina  |                    | 28  | 21984759575 | Rua dois | Minas Gerais | Belo Horizonte | 422         | não pode ficar em branco |
     
