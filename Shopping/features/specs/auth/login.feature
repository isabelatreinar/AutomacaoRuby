#language: pt

Funcionalidade: Login
    Para que somente eu possa ver e realizar as minhas compras
    Sendo um usuário
    Posso logar no sistema com meus dados de acesso previamente cadastrados

@login @logout
Cenário: Login com sucesso

    Dado que acessei a pagina de login
    Quando faço login com "551.478.056-21" e "123456"
    Então sou autenticado com sucesso

@usuario_invalido
Esquema do Cenario: Usuario invalido
   
   Dado que acessei a pagina de login
   Quando faço login com "<cpf>" e "<senha>"
   Então não sou autenticado
   Então devo ver a mensagem "<alerta>"

   Exemplos:
      | cpf                      | senha  | alerta                      |
      | 683.584.982-76           | 789654 | USUÁRIO OU SENHA INVÁLIDOS! | 
      | 123.456.789-78           | 123456 | USUÁRIO OU SENHA INVÁLIDOS! |

@tentativa_login
Esquema do Cenario: Tentativa de login

   Dado que acessei a pagina de login
   Quando faço login com "<cpf>" e "<senha>"
   Então não sou autenticado porque nao tenho informacoes suficientes
   Então devo ver a mensagem de alerta "<alerta>"
      Exemplos:
      | cpf                      | senha  | alerta                      |
      |                          | 123456 | Informe o nome do usuário   |
      | 123.456.789-78           |        | Informe a senha             |