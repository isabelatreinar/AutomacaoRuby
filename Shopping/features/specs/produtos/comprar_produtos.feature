#language: pt

Funcionalidade: Compra de produto
    Sendo um usuario cadastrado no Optemais
    Posso realizar login no Opte+
    Para poder realizar minhas compras

@comprar @auth 
Cenario: Comprar produto
    Dado que adicionei o produto 'Creme para Assadura Huggies - Turma da Mônica Infantil 90g' no carrinho
    Quando preencho os dados de compra com:
      | Titular       | TESTES E QUALIDADE |
      | Cartao        | 4242424242424242   |
      | Validade_Mes  | 05                 |
      | Validade_Ano  | 2019               |
      | Cod_Seguranca | 452                |
      | DDD           | 31                 |
      | Telefone      | 987548526          |
      |Parcelas       | 1                  |
    Então visualizo a confirmacao da minha compra
