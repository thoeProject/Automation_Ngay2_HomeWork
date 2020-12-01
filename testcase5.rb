# Test Case 5-Mở Google. comand Print Page nguồn.
# Các bước để tự động hóa:
# 1. Khởi chạy trình duyệt theo lựa chọn của bạn, nói., Firefox, chrome.
# 2. Mở URL này-https://www.google.com/
# 3. Tối đa hóa hoặc kích thước bộ của cửa sổ trình duyệt.
# 4. Lấy nguồn trang và in nó.
# 5. Chốt trình duyệt.
require 'selenium-webdriver'
require 'webdrivers'
driver = Selenium::WebDriver.for :firefox
begin
        #navigate to url
        driver.get 'https://www.google.com/'

        # maximize browser
        driver.manage.window.maximize

        # get page source
        driver.page_source

        sleep 5

        driver.quit  
end
