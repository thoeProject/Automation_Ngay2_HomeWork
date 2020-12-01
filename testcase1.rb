require 'selenium-webdriver'
driver = Selenium::WebDriver.for :chrome
driver.get 'https://google.com'
driver.quit