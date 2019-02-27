#language:pt

Funcionalidade: Pre Cadastro
    Sendo uma aplicação cliente    
    Posso solicitar requisiçoes POST para o servico pre-cadastro
    Para que os participantes sejam cadastrados no sistema

Contexto: Autenticacao
    Dado que o usuario esta autenticado
      | grand_type    | password |
      | client_id     | CSU      |
      | client_secret | CSU      |
@auth
Cenário: Cadastro de Participante
    E o usuario informou os seguintes dados:
      | cod_org           | 040                         |
      | cod_prog_ext      | PS001                       |
      | chave             | 72487117567                 |
      | cpf               | 72487117567                 |
      | tipo              | F                           |
      | nome              | Fabiana Arena               |
      | email             | testesequalidade@csu.com.br |
      | logradouro        | Praça Hugo Werneck          |
      | numero_logradouro | 253                         |
      | bairro            | Santa Efigenia              |
      | cidade            | Belo Horizonte              |
      | uf                | MG                          |
      | cep               | 30150300                    |
      | complemento       | CSU                         |
      | ddd               | 31                          |
      | telefone          | 991926865                   |
    
    Quando faço uma solicitacao post para o servico pre cadastro
    Então o codigo http deve ser igual a "201"
    E no corpo da resposta deve conter a mensagem "ok"