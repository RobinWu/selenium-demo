# http://code.google.com/p/selenium/wiki/RubyBindings

require 'rubygems'
require 'selenium-webdriver'

[:firefox, :chrome].each do |browser|
  puts "Selenium by #{browser} begin"

  driver = Selenium::WebDriver.for browser
  driver.get "http://www.baidu.com"

  element = driver.find_element :id => "kw"
  element.send_keys "selenium"
  element.submit

  # wait = Selenium::WebDriver::Wait.new(:timeout => 10)
  # wait.until { driver.title.downcase.start_with? "selenium" }

  # puts "Page title is #{driver.title}"
  driver.quit

  puts "Selenium by #{browser} end"
end
