
if mensagem == "produto indisponivel" 

    find('element').set 'produto' 
    cai no if
    teste

ifelse mensagem == "produto aumentou de preco" || "produto abaixou de preco"
     voltar pagina
     seleniona preco 
     ir pro chekot
     teste

else
noa funcionou
end





def teste do

if mensagem == "produto indisponivel"
    find('element').set 'outro produto' 
ifelse mensagem == "produto aumentou de preco" || "produto abaixou de preco"
end