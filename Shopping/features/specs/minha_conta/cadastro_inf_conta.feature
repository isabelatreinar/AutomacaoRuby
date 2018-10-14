#language: pt

Funcionalidade: Cadastro de informações da conta
    Sendo eu um usuário cadastrado
    Posso gerenciar as informações da minha conta
    Para realizar minhas compras

Contexto: Cadastros em Minha Conta
    Dado que acessei as informacoes da minha conta

@cadastro_tel @auth
Cenario: Cadastrar telefone
    Quando atualizo meu cadastro com os telefones
      | Telefone |3199999999|
      | Celular  |11111111111|
    Então minhas informacoes sao gravadas em minha conta

@tel_obrig @auth
Cenario: Atualizar cadastro sem celular
    Quando atualizo meu cadastro sem inserir o numero do celular
    Então visualizo a mensagem "Informe o telefone celular" no campo telefone celular