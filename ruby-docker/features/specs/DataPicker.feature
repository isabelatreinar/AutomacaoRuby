#language: pt

Funcionalidade: Selecao de Data
    Sendo um usuário do site
    Posso acessar o site de Automação
    Para realizar a selecao de uma Data

@datapicker
Cenário: Selecionar Data 
  Dado que estou na pagina de Data
  Quando seleciono os seguintes dados:
    | Ano          | 2018             |
    | Mes          | Abril            |
    | Dia          | 28               |
  E confirmo a selecao da data
  Então visualizo a data selecionada "Apr 28"
