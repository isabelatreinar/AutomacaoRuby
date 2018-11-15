class Carrinho < SitePrism::Page
  # Onde  a classe "".carrinho-direita" é o pai dos elementos "ul" e assim em diante são os filhos
  element :ultimo_radio, '.carrinho-direita > ul:nth-child(2) > li:nth-child(3) > label > input'
end
