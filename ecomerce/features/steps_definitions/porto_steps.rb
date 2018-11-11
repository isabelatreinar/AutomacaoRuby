When("entro no site") do
   @porto = PortoPage.new
   @porto.load
end
  
Then("limpo carrinho") do  
    @porto.teste
end