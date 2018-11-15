
class CheckoutPage < SitePrism::Page

    element :btn_confirm_endereco, '#botaoConfirmarEndereco'
    element :input_nome_cartao,    '#NomeCartao'
    element :input_ddd,            '#DDD'
    element :input_telefone,       '#Telefone'
    element :input_cartao,         '#NumeroCartao'
    element :input_cod,            '#CVV'
    element :input_dt_nasc,        '#DataNascimento'
    element :combo_mes,            '#MesExpiracao'
    element :combo_ano,            '#AnoExpiracao'
    element :combo_parcelas,       '#OpcoesPagamento'


    def finalizar_compra(dados)
        btn_confirm_endereco.click
        input_nome_cartao.set dados['nome_titular']
        input_ddd.set dados['ddd']
        input_telefone.set dados['telefone']
        input_cartao.set dados['num_cartao']
        input_cartao.send_keys :tab
        input_cod.set dados['cod_seguranca']
        sleep(2)     
        #passar via JQuery pois quando passo o valor com capybara, o valor da data desconfigura, e apresenta erro de data inválida!
        page.execute_script("$('#DataNascimento').val('12/06/1987')")
        sleep(2)
        combo_mes.find('option', text: dados['mes_val']).select_option
        sleep(2)
        combo_ano.find('option', text: dados['ano_val']).select_option
        sleep(2)
        combo_parcelas.find('option[value="1"]').select_option
        #input_ano.set dados['ano_val']
        #combo_parcelas.find('option', value: '1').select_option
    end

end