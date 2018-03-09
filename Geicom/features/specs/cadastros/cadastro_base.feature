#language: pt

Funcionalidade: Cadastro de Base Legal
    Sendo eu um usuário com perfil de cadastro
	Posso realizar o cadastro de Base Legal no sistema
	Para poder realizar os demais cadastros

    @authComToken @base
    Cenário: Cadastrar Base Legal
        Dado que eu tenho uma Base Legal com os seguintes dados:
            | Tipo                | Resolução  |
            | Número              | 2030       |
            | Data_Publicação     | 15/03/2017 |
            | Ano_Início_Vigência | 2018       |     
        Quando realizo o cadastro desta Base Legal
        Então devo ver a mensagem de sucesso "Base legal salva com sucesso."