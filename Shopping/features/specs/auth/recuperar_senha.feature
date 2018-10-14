#language: pt

Funcionalidade: Recuperação de Senha
    Sendo um usuário que esqueceu a senha de acesso
    Posso solicitar a recuperação da senha
    Para que eu possa acessar o site da Opte+

@recuperar_senha
Cenario: Recuperar senha
    Dado que acessei a pagina de recuperacao de senha
    Quando solicito a recuperacao para o cpf '683.584.982-76' e e-mail 'isabela.goncalves@csu.com.br'
    Então o site exibe a mensagem de confirmacao de envio de senha 'Enviamos para o e-mail *************lves@csu.com.br as instruções para recuperar a sua senha.'
    