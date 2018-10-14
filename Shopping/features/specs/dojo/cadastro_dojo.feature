#language: pt
Funcionalidade: Cadastro do usuario
    Sendo um usuario sem cadastro
    Posso realizar o cadastro no site
    Para criar tarefas

Contexto:Cadastrar usuario
Dado que acessei o site Marktasks

@testeCadastroreset @testeCadastro @testeCadastroLogout
Cenário: Cadastro com sucesso
    
    Quando faco o cadastro com:
    |nome    | Flavio machado          |
    |email   | flaviosm2003@hotmail.com|
    |senha   | 123456                  | 
    Então visualizo a pagina de tarefas

@testeCadastroSemSucesso
Cenário: Cadastro sem sucesso
    Quando faco o cadastro com:
    |nome    | Flavio machado          |
    |email   |                         |
    |senha   | 123456                  | 
    Então visualizo a mensagem de "Email é obrigatório."
    



