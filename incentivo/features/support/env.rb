require 'selenium-webdriver'
require 'capybara'
require 'capybara/cucumber'
require 'site_prism'
require 'capybara/rspec'
require 'faker'
require 'rspec'



#variavel de ambiente para servidor externo
ENV['HTTP_PROXY'] = ENV['http_proxy'] = nil
#driver = Selenium::WebDriver.for :firefox

#trecho de código para sites não seguros, sem certificado(só para quando o driver for Firefox, chrome não precisa)

Capybara.register_driver :selenium do |app|
  client = Selenium::WebDriver::Remote::Http::Default.new
  client.read_timeout = 300
  caps = Selenium::WebDriver::Remote::Capabilities.new(accept_insecure_certs: true)
  Capybara::Selenium::Driver.new(app, :http_client => client,desired_capabilities: caps)
  
end

#criei a variável TIPO_AMBIENTE para receber o valor de ENVIRONMENT_TYPE do arquivo cucumber.yml
ENVIRONMENT_TYPE = ENV['ENVIRONMENT_TYPE']
# O config recebe o caminho da pasta data com o arquivo de acordo com a configuração do ENRIRONMENT_TYPE no arquivo cucumber.yml
CONFIG = YAML.load_file(File.dirname(__FILE__) + "/data/#{ENVIRONMENT_TYPE}.yml")


#tratar timeout
=begin
Capybara.register_driver :selenium_chrome do |app|
  client = Selenium::WebDriver::Remote::Http::Default.new
  client.read_timeout = 30
  Capybara::Selenium::Driver.new(app, :browser => :chrome, :http_client => client)
end
=end
Capybara.configure do |config|
  config.default_driver = :selenium_chrome # essa configuração é para instanciar o browser com Firefox/Chrome, etc
  config.app_host = CONFIG['url_home']
end
#configuração de tempo de espera para achar elemento na tela
Capybara.default_max_wait_time = 90
#@wait = Selenium::WebDriver::Wait.new(:timeout => 45)





