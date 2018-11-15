#language: pt

Funcionalidade: Resgate de Produtos
    Sendo um participante que deseja resgatar produtos
    Posso acessar o Opte+
    Para poder realizar meus resgates

@resgate @token_porto
Cenario: Resgatar produtos
    Dado que desejo resgatar o produto 'camiseta'
    Quando realizo o resgate com os dados:
      | nome_titular  | TESTES E QUALIDADE |
      | ddd           | 31                 |
      | telefone      | 987458256          |
      | num_cartao    | 4242424242424242   |
      | cod_seguranca | 458                |
      | mes_val       | 06                 |
      | ano_val       | 2020               |
    Então visualizo a confirmacao e os detalhes do meu resgate na pagina