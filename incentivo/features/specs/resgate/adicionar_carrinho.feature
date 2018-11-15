#language: pt

Funcionalidade: Adicionar produtos ao carrinho
    Sendo um usuario que possui pontos
    Posso adicionar produtos ao meu carrinho
    Para realizar meus resgates


@adicionar_carrinho @token_porto
Cenário: Adicionar produto em carrinho
    Dado que realizei a pesquisa do produto 'Mini auxiliador de partida'
    Quando adiciono este produto no carrinho
    Então devo ver as informacoes do produto no carrinho
