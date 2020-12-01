# Test Case 6-Nhận tiêu đề trang sau khi tìm kiếm với Google.com
# Các bước để tự động hóa:
# 1. Khởi chạy trình duyệt theo lựa chọn của bạn, nói., Firefox, chrome.
# 2. Mở URL này-https://www.google.com/
# 3. Tối đa hóa hoặc kích thước bộ của cửa sổ trình duyệt.
# 4. Tìm kiếm với từ 'iTMS Coaching'
# 5. Nhận tiêu đề Trang và in nó.
# 6. Chốt trình duyệt.
require 'selenium-webdriver'
require 'webdrivers'
driver = Selenium::WebDriver.for :chrome
begin
    
    # navigate to chrome
    driver.get 'https://www.google.com/'

    # set fullscreen window
    driver.manage.window.maximize

    #find input
    autoSearch = driver.find_element(xpath: "//body/div[@id='viewport']/div[@id='searchform']/form[@id='tsf']/div[2]/div[1]/div[1]/div[1]/div[2]/input[1]")

    # send_keys('iTMS Coaching')
    autoSearch.send_keys('iTMS Coaching')

    #search
    wait = Selenium::WebDriver::Wait.new(timeout:5)
    wait.until{driver.find_element(class:'sbl1').displayed?}
    clickSearch = driver.find_element(class:'sbl1')
    clickSearch.click

    # get Title of webpage
    accessPage = driver.find_element(class: 'LC20lb')
    getTitle = accessPage.click
    getTitle = driver.title
    puts getTitle
    
    driver.quit


    
end