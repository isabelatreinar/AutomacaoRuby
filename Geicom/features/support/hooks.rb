Before do
  @acesso = AcessoTokenPage.new
end

Before('@authComToken') do
  @acesso.load
  @acesso.acessarComToken
end