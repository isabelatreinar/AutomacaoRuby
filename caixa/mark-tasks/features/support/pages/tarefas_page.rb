
require_relative 'sections'

class Adicionar < SitePrism::Section
  element :input_titulo, 'input[name=title]'
  element :input_data, 'input[name=dueDate]'
  element :input_tags, '.bootstrap-tagsinput input'
  element :salvar, '#form-submit-button'
  
  def nova(tarefa, tags)
    input_titulo.set tarefa['titulo']
    input_data.set tarefa['data']

    tags.each do |tag|
      input_tags.set tag['tag']
      input_tags.send_keys :tab
    end
    salvar.click
   end
end

class TarefasPage < SitePrism::Page

  section :nav, Navbar, '#navbar'
  #nav é um nome qualquer/'Navbar' é o nome da classe (neste caso ela está no arquivo 'sections.rb')/'#navbar' é o seletor CSS da barra de navegação
  section :adicionar, Adicionar, '#add-task-view'
  #'Adicionar' é o nome da classe (neste caso ela neste arquivo mesmo, tarefas_page.rb)
  element :titulo, '.header-title h3'
  element :botao_novo, '#insert-button'
end