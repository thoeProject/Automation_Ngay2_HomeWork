# Test Case 2-Mở Google. comand tối đa hóa cửa sổ trình duyệt.
# Các bước để tự động hóa:
# 1. Khởi chạy trình duyệt theo lựa chọn của bạn, nói., Firefox, chrome.
# 2. Mở URL này-https://www.google.com/
# 3. Tối đa hóa hoặc kích thước bộ của cửa sổ trình duyệt.
# 4. Chốt trình duyệt.
require 'selenium-webdriver'
driver = Selenium::WebDriver.for :chrome
begin
        # navigate to url    
        driver.get 'https://google.com'

        # maximum the webpage
        driver.manage.window.maximize
        sleep 5
        driver.quit    
end 