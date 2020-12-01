# Test Case 3-Mở Google. Comand Print đó là tiêu đề Trang.
# Các bước để tự động hóa:
# 1. Khởi chạy trình duyệt theo lựa chọn của bạn, nói., Firefox, chrome.
# 2. Mở URL này-https://www.google.com/
# 3. Tối đa hóa hoặc kích thước bộ của cửa sổ trình duyệt.
# 4. Nhận Tiêu đề của trang và in nó.
# 5. Chốt trình duyệt.
require 'selenium-webdriver'
require 'webdrivers'
driver = Selenium::WebDriver.for :chrome
begin
    # navigate to url
    driver.get 'https://www.google.com/'

    # maximum webpage
    driver.manage.window.maximize

    # print the title of webpage
    puts driver.title

   
    sleep 5
    driver.quit

end