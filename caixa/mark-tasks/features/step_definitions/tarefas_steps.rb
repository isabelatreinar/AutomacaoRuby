Dado('que eu tenho uma tarefa com os atributos:') do |table|
   @tarefa = table.rows_hash
end

Dado('eu quero taguear estas tarefas com:') do |table|
  @tags = table.hashes
end
    
Quando('faço o cadastro desta tarefa') do
  @tarefas.botao_novo.click
  @tarefas.adicionar.nova(@tarefa, @tags)
end
  
Então('devo ver este cadastro com status {string}') do |status|
  pending #Write code here that turns the phrase above into concrete actions
end