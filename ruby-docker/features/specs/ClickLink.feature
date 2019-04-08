#language: pt

Funcionalidade: Links


Cenário: Selecionar Link de sucesso
  Dado que estou na pagina de selecao de links
  Quando seleciono o link de codigo 200
  Então visualizo a mensagem "Success!!"

Cenário: Selecionar Link de erro 400 
  Dado que estou na pagina de selecao de links
  Quando seleciono o link de erro com o codigo 400
  Então visualizo a mensagem de erro "Bad Request!!"

Cenário: Selecionar Link de erro 404 
  Dado que estou na pagina de selecao de links
  Quando seleciono o link de alerta de codigo 404
  Então visualizo a mensagem de alerta "Page Not Found!!"

Cenário: Selecionar Link de erro 500
  Dado que estou na pagina de selecao de links
  Quando seleciono o link de fatal erro de codigo 500
  Então visualizo a mensagem fatal "Internal Server Error!!"