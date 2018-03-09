require 'selenium-webdriver'
require 'capybara'
require 'capybara/cucumber'
require 'site_prism'

#configurar capybara para usar com selenium
Capybara.configure do |config|
  config.default_driver = :selenium # essa configuração é para instanciar o browser com Firefox
    config.app_host = 'http://172.16.10.228:8082/'
end
#configuração de tempo de espera para achar elemento na tela
Capybara.default_max_wait_time = 5