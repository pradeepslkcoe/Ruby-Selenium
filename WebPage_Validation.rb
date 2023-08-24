require 'selenium-webdriver'
require "logger"

@browser = Selenium::WebDriver.for :chrome
@browser.navigate.to "http://www.google.com"

search = @browser.find_element(xpath: "//*[@id='APjFqb']")
search.send_keys(:control, 'SKL')



logger = Logger.new(STDOUT)
logger.debug("Test cases complete, browser open and google launched")

@browser.quit