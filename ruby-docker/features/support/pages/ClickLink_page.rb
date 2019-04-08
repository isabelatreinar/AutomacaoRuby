
class Link_Page < SitePrism::Page


    element :link_sucesso, 'a[href="/buscaelementos/success"]'
    element :element_msg, '.red-text'
    element :link_400, 'a[href="/buscaelementos/badrequest"]'
    element :link_404, 'a[href="/buscaelementos/notfound"]'
    element :link_500, 'a[href="/buscaelementos/internalservererror"]'


  
    def goToUrl
      visit 'buscaelementos/links'
    end
  
    def seleciona_link_200
      link_sucesso.click
    end 

    def seleciona_link_400
        link_400.click
      end 

    def seleciona_link_404
      link_404.click
    end 
    
    def seleciona_link_500
        link_500.click
    end 

    def region_mensagem
        return element_msg
    end
  
  end
  