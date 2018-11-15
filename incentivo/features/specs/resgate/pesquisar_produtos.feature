# language: pt

Funcionalidade: Pesquisa
    Sendo um participante que deseja pesquisar produtos
    Posso acessar o Opte+
    Para poder visualizar os produtos

@pesquisa @token_porto
Cenário: Pesquisa de Produtos
    Quando realizo a pesquisa do produto 'Creme para maos'
    Então visualizo as informacoes 'Creme para maos' na pagina
    #Mini Auxiliador de Partida