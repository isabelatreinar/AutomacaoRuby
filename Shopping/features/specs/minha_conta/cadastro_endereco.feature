#language:pt

Funcionalidade: Cadastro de Endereços
    Sendo um usuario cadastrado que deseja realizar compras
    Posso acessar o site do Opte+
    Para poder cadastrar meus endereços de entrega de produtos

Contexto: Cadastro de Endereco
    Dado que acessei minha conta

@editar_endereço @auth
Cenario: Editar Endereço
    Quando edito o meu endereco padrao com os dados:
      | cep         | 30130171       |
      | rua         | Rua Sergipe    |
      | numero      | 200            |
      | complemento | 5º andar       |
      | referencia  | Perto da Praça |
    Então visualizo as informacoes do meu endereco padrao em minha conta

@adc_endereco @auth
Cenario: Adicionar Endereço
    Quando adiciono um novo endereco com os dados:
      | cep         | 30150300           |
      | rua         | Praca Hugo Werneck |
      | numero      | 350                |
      | complemento | apto 302           |
      | bairro      | Santa Efigenia     |
      | estado      | Minas Gerais       |
      | cidade      | BELO HORIZONTE     |
      | referencia  | Região Hospitalar  |
    Então visualizo as informacoes do meu novo endereco em minha conta

@campos_obr @auth
Cenario: Campos obrigatorios vazios
    Quando tento cadastrar um endereco com campos obrigatorios vazios
    Então visualizo a mensagem "Campo Obrigatório" nos campos