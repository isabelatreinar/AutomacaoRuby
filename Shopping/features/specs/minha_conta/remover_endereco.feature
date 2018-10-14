#language: pt

Funcionalidade: Remover endereço
    Sendo um usuário com endereços cadastrados
    Posso acessar o site com meus dados
    Para excluir um endereço

Contexto: Exclusao de endereço
    Dado que acessei minha conta

@excluir_end @auth
Cenario: Excluir endereço
    Quando solicito a exclusao de um endereço cadastrado
    Então o endereço eh excluido da lista dos meus endereços