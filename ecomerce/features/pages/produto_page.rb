class Produto < SitePrism::Page
  element :resgate, '.btnDetalheProdutoSubmit'



  element :data, ' css'
end


# repete 5 veses a determinada acao.
5.times do
 data.send_keys(:backspace)
end

data.native.clear

12/21/1989

<div id="mydiv" data-myval="10"></div>

page.execute_script("$('#mydiv').data('myval',20);")
page.execute_script('document.scroll(500) scrollTop += 200;')


escolhi Produto
tela de detalhe ( verificar se o botao temo texto indisponivel)
def validarproduto
  if text.text == "nao esta disponivel"
    visit 'pagina de produto'
    find('css > li:nth-child(2)').click 

    ou 
    metodo_de_reserva

  else
    metodo_que_funciona_normal
  end
end


tela de carrinho (quando vc clica que da um refresh na tela)

def validarcarrinho
  if text.text == "valor aumento"
    faz isso    
  elsif text.text  = "valor diminuiu"
    clica 
    clica
  else
       metodo_que_funciona_normal
  end
end

def validarcarrinho
  if text.text == "valor aumentou" || "valor diminuiu"
    
  else
    clicar no botao
  end
end


#pega o valor de um determinada tag
<div id="mydiv" data-myval="campo obrigatorio">texto aqui</div>
find("div[:'data-myval']").text


#ele busca se tem o determinado css e imprime true ou false
page.have_css('css') retorna true ou false
puts page.have_css('css')
expect(page.have_css('css')).to eql true