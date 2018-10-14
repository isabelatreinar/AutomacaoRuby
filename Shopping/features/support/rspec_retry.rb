
# Deal with intermittent Selenium timeouts
# From: https://github.com/jnicklas/capybara/issues/1305#issuecomment-112535264

# RSpec.configure do |config|
#     # show retry status in spec process
#     config.verbose_retry = true
  
#     # Try twice (retry once)
#     config.default_retry_count = 3
  
#     # Only retry when Selenium raises Net::ReadTimeout
#     config.exceptions_to_retry = [Net::ReadTimeout]
#     Capybara.javascript_driver = :webkit
#   end