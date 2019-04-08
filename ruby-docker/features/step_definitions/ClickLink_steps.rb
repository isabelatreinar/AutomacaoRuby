Dado('que estou na pagina de selecao de links') do
    @links.goToUrl
  end
  
Quando('seleciono o link de codigo {int}') do |cod|
  @links.seleciona_link_200
end

Então('visualizo a mensagem {string}') do |mensagem|
  expect(@links.region_mensagem.text).to have_content mensagem
end
  
Quando('seleciono o link de erro com o codigo {int}') do |cod|
    @links.seleciona_link_400
end

Quando('seleciono o link de alerta de codigo {int}') do |cod|
    @links.seleciona_link_404
end

Quando('seleciono o link de fatal erro de codigo {int}') do |cod|
    @links.seleciona_link_500
end
  
Então('visualizo a mensagem de erro {string}') do |mensagem|
    expect(@links.region_mensagem.text).to have_content mensagem
end

Então('visualizo a mensagem de alerta {string}') do |mensagem|
    expect(@links.region_mensagem.text).to have_content mensagem
end
  
Então('visualizo a mensagem fatal {string}') do |mensagem|
    expect(@links.region_mensagem.text).to have_content mensagem
end
  