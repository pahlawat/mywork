require 'rubygems'
require 'bundler/setup'
require 'capybara'
require 'capybara/dsl'
require 'capybara/cucumber'
require 'capybara/rspec'
require 'selenium-webdriver'
require 'capybara/rspec'
require 'rspec'
require 'rspec/expectations'
require 'site_prism'
require 'require_all'
require 'platform'

$LOAD_PATH << '.'
support_dir = File.join(File.dirname(__FILE__))
path_to_root = File.join(support_dir, '/../../')
$LOAD_PATH.unshift File.expand_path(support_dir)

# ======= load common helpers =======
require_rel '/../page_models/sections/'
require_rel '/../page_models/pages/'


case Platform::OS
when :win32
  current_os = 'win'
when :unix
  if Platform::IMPL == :macosx
    current_os = 'mac'
  else
    current_os = 'unix'
  end
else
  fail "Current OS is not supported by ChromeDriver (OS: #{Platform::OS},
 Implementation: #{Platform::IMPL}):\r\n- http://code.google.com/p/chromium/downloads/list\r\n- http://www.browserstack.com/local-testing#command-line"
end

chromedriver_path = File.expand_path File.join(path_to_root, 'lib', "chromedrv/#{current_os}", 'chromedriver')

#===========================================
browser_name = (ENV['BROWSER_NAME'] || 'chrome').downcase

fail "Not supported browser: #{ENV['BROWSER_NAME']}" unless browser_name =~ /^(chrome|firefox|safari)$/i

Capybara.configure do |config|
  config.run_server = false
  config.default_driver = (ENV['DRIVER'] || 'selenium').to_sym
  config.javascript_driver = browser_name.to_sym
end

# register local browser driver
Capybara.register_driver :selenium do |app|
  Selenium::WebDriver::Chrome.driver_path = chromedriver_path
  http_client = Selenium::WebDriver::Remote::Http::Default.new
  http_client.timeout = 120
  Capybara::Selenium::Driver.new(app, browser: browser_name.to_sym, http_client: http_client)
end

#having problems with running tests in chrome, so using firefox as default