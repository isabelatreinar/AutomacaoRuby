
Dado('que acessei a pagina de recuperacao de senha') do
  visit('/Conta/Login')
  @login.btn_fecha_popup.click
end

Quando('solicito a recuperacao para o cpf {string} e e-mail {string}') do |cpf, email|
  @login.recupera_senha(cpf, email)
end
  
Então('o site exibe a mensagem de confirmacao de envio de senha {string}') do |mensagem|
  expect(page).to have_css(second('.panel-body'), text: mensagem)
end