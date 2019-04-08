Dado("que estou na pagina de Data") do
  @dataPicker.goToUrl
end

Quando("seleciono os seguintes dados:") do |table|
    @dados = table.rows_hash
end

Quando("confirmo a selecao da data") do
  @dataPicker.cadastroData(@dados)
end

Então("visualizo a data selecionada {string}") do |dataString|
  #expect(page).to have_css(@dataPicker.textoData, text: dataString, visible: false)
  @textData = find('.datepicker-date-display > .date-text')
  expect(@textData.text).to have_content dataString
end
