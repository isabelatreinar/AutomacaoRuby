
#language:pt

Funcionalidade: Cadastro
	Sendo um usuário que possui muitas tarefas
	Posso fazer meu cadastro no sistema
	Para poder gerenciar as minhas tarefas

Contexto: Cadastro
    Dado que eu acessei a página de cadastro

@cadastro_simples
Cenário: Cadastro simples
    
    E possuo os seguintes dados:
        | Nome  | Fernando            |
        | Email | fernando@qaninja.io |
        | Senha | 123456              |
    Quando faço o meu cadastro
    Então sou redirecionado para o menu painel de tarefas

@tentativa_cadastro
Esquema do Cenario: Tentativa de cadastro
    
    E possuo os seguintes dados:
        | Nome  | <nome> |
        | Email | <email>|
        | Senha | <senha>|
    Quando faço o meu cadastro
    Então devo ver uma mensagem de alerta "<alerta>"

    Exemplos:   
        | nome     | email               | senha  | alerta                                      |  
        | Fernando |                     | 123456 | Email é obrigatório.                        |                                                         
        | Fernando | fernando@qaninja.io |        | Informe uma senha.                          |                                                   
        | Fernando | fernando@qaninja.io | 12345  | Sua senha deve ter pelo menos 6 caracteres. |                                          
        | Fernando | fernando@qaninja.io | 1234   | Sua senha deve ter pelo menos 6 caracteres. |        
        | Fernando | fernando@qaninja.io | 123    | Sua senha deve ter pelo menos 6 caracteres. |      
        | Fernando | fernando@qaninja.io | 12     | Sua senha deve ter pelo menos 6 caracteres. |    
        | Fernando | fernando@qaninja.io | 1      | Sua senha deve ter pelo menos 6 caracteres. |                        
