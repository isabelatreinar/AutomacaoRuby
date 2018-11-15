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

#mouse hover
mouse = find('elemento').hover
mouse.find('elemento').hover.click

#exemplo dois
visit 'https://www.walmart.com.br/especial/blackfriday/esquenta/?fq=H:43330&refsmkt=8442136;8442142;4723433&utmi_p=wm-desktop/home-promo&utmi_cp=-wm-home-controle-051118&utmi_pc=x95-Desktop-home-0-0-0-tv_flash-0-01-Esquenta-Note-Dove-061118'

@teste = find('.site-menu-container > #site-menu > ul > .menu-item:nth-child(3)')
@teste.hover
@teste.hover.find('.categories > .item', text:'Brastemp').click

#dropdown
#primeiro clica depois clica no texto
find('elemento').click
find('elemento', text: 'texto').click