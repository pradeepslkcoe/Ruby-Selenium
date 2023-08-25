require "rubygems"
require "test/unit/assertions"
require "selenium-webdriver"
require "test/unit/runner/junitxml"
require "logger"



    
        options = Selenium::WebDriver::Chrome::Options.new
        options.add_argument('--headless')
        driver = Selenium::WebDriver.for :chrome, options: options
        driver.navigate.to "http://www.wikipedia.com"
        
        puts "#{driver.title}"
        expected="Wikipedia"
        actual="#{driver.title}"
        expected.eql?(actual)
        puts "#{expected.eql?(actual)}"
        
        driver.quit

