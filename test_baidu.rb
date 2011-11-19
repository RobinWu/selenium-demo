# http://code.google.com/p/selenium/wiki/RubyBindings

require 'rubygems'
require 'selenium-webdriver'

driver = Selenium::WebDriver.for :firefox
driver.get "http://www.baidu.com"

element = driver.find_element :id => "kw"
element.send_keys "selenium"
element.submit

puts "Page title is #{driver.title}"

wait = Selenium::WebDriver::Wait.new(:timeout => 10)
wait.until { driver.title.downcase.start_with? "selenium" }

puts "Page title is #{driver.title}"
driver.quit
