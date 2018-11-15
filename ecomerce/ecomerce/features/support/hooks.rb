require_relative 'helper.rb'

After do |scenario|
  scenario_name = scenario.name.gsub(/[^A-Za-z ]/, '').gsub(/\s+/, '_')

  if scenario.failed?
    take_screenshot(scenario_name.downcase!, 'failed')
  else
    take_screenshot(scenario_name.downcase!, 'passed')
  end
end


def buscar_por_texto_e_clicar(elementos,textos)
   find("#{elementos}", text: textos).click
end