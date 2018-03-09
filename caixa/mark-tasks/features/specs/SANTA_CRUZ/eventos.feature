#language: pt
Funcionalidade: Cadastrar eventos
    Para que eu possa gerenciar um novo evento
    Sendo um Administrador
    Posso cadastrar novos eventos no sistema
    @eventos
    Cenario: Novo evento

        Dado que eu tenho um evento com os dados:
            | Nome        | <nome>        |
            | Descrição   | <descricao>   |
            | Localizacao | <localizacao> |
            | Avaliação   | <avaliacao>   |
            | Data        | <data>        |
            | Foto        | <foto>        |
        Quando faço o cadastro deste evento
        Então devo ver a mensagem
        