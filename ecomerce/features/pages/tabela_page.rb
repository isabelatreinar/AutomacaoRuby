class TabelaPage < SitePrism::Page

  # Declare all the elements of this page
  # element :button,       pending 'Insert button identificator'
  set_url 'https://automacaocombatista.herokuapp.com/users'

  elements :lista, 'tbody > tr > td:first-child'

  element :lista_dois, 'td:nth-child(2)'

  #lista_dois[0].text
  def method_name
    lista.each do |t|
      puts t.text
      #se encontrar um texto igual a esse ele executa a ação dentro do if
      #if t.text == 'aaa OOO a@a.com aaa M aaa 15 AAA search edit delete'
      #  t.find('td:nth-child(11)').click
      #  #t.find('a[data-method="delete"]').click
      #end 
 
    end
  end

  
end
