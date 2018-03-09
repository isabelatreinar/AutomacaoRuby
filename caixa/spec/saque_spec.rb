

describe('Saque') do

    it('Saque no caixa') do 
      conta = Conta.new ('Fernando')
      conta.saldo = 500
      conta.saque(100)

       conta.mensagem("Saque com sucesso.")
    end
end
