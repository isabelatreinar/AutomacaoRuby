When("tabela") do
    @tabela = TabelaPage.new
    @tabela.load
    @tabela.method_name
    expect(@tabela.lista[0].text).to eq 'ABC'
  end