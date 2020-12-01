# Test Case 4-Mở Google. comand Print url hiện tại.
# Các bước để tự động hóa:
# 1. Khởi chạy trình duyệt theo lựa chọn của bạn, nói., Firefox, chrome.
# 2. Mở URL này-https://www.google.com/
# 3. Tối đa hóa hoặc kích thước bộ của cửa sổ trình duyệt.
# 4. Nhận URL của trang hiện tại và in nó.
# 5. Chốt trình duyệt.

require 'selenium-webdriver'
require 'webdrivers'
driver = Selenium::WebDriver.for :chrome
begin
    # navigate to url
    driver.get 'https://www.google.com/'

    #maximize brower
    driver.manage.window.maximize

    # get URL
    puts driver.current_url

    sleep 5
    driver.quit

    
end