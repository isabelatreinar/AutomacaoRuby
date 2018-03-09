#language: pt

Funcionalidade: Acessar sistema com Token
    Sendo eu usuário cadastrado
    Posso acessar o sistema
    Para poder ter acesso às funcionalidades

    Contexto: Cadastro
        Dado que eu acessei a página do Sigres

    Cenário: Acesso do usuário ao sistema

        Quando acesso o sistema com token
        Então sou autenticado com sucesso
        E sou redirecionado para a tela inicial

