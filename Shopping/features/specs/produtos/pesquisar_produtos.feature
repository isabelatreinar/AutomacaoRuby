#language: pt

Funcionalidade: Pesquisa
    Sendo um cliente que deseja pesquisar produtos
	Posso acessar o Opte+
	Para poder visualizar os produtos

@pesquisa @auth 
Cenario: Pesquisa de Produtos
    Dado que estou logado no Opte+
    Quando realizo a pesquisa do produto "FERRO DE PASSAR 1600W"
    Então visualizo as informacoes "FERRO DE PASSAR 1500W DURATHON HAMILTON BEACH -127V" na pagina
