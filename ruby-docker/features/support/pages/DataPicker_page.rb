class DataPicker_Page < SitePrism::Page

  element :input_data, '#datepicker'
  element :input_todosAnos, '.select-year >.select-dropdown.dropdown-trigger'
  element :input_selecionarAno, 'body[style="overflow: hidden;"] > .dropdown-content.select-dropdown:first-of-type > li:nth-child(10)'
  element :input_todosMes, '.select-month > .select-dropdown.dropdown-trigger'
  element :input_selecionarMes, 'body[style="overflow: hidden;"] > .dropdown-content.select-dropdown:last-of-type > li:nth-child(4)'
  element :input_selecionarDia, 'td[data-day="28"] > button'
  element :btn_criar, '.btn-flat.datepicker-done'

  def textoData
    return '.datepicker-date-display > .date-text'
  end

  def goToUrl
    visit 'widgets/datapicker'
  end

  def cadastroData(dados)
    input_data.click
    input_todosAnos.click
    wait_until_input_selecionarAno_visible
    input_selecionarAno.click
    wait_until_input_todosMes_visible
    input_todosMes.click
    wait_until_input_selecionarMes_visible
    input_selecionarMes.click
    input_selecionarDia.click
    btn_criar.click
  end 

end