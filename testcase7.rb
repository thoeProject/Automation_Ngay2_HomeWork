# Test Case 7-Dạng đầu vào
# Các bước để tự động hóa:
# 1. Khởi chạy trình duyệt theo lựa chọn của bạn, nói., Firefox, chrome.
# 2. Mở URL này-https://itmscoaching.herokuapp.com/form
# 3. Tối đa hóa hoặc kích thước bộ của cửa sổ trình duyệt.
# 4. Nhập mẫu với dữ liệu sau:
# - Tên: iTMS
# - Họ: Huấn luyện viên
# - Chức danh công việc: QA
# - Trình độ giáo dục cao nhất: Cao đẳng
# - Tình dục: Nam giới
# - Năm kinh nghiệm: 2-4
# - Ngày: 27/10/2025
# 5. Nhấp vào Gửi
# 6. Trình duyệt đóng
require 'selenium-webdriver'
require 'webdrivers'

driver = Selenium::WebDriver.for :chrome

begin
    # navigate to webpage and adjust page size
    driver.get 'https://itmscoaching.herokuapp.com/form'
    driver.manage.window.maximize

    #input inf
    inputFirstName = driver.find_element(id: 'first-name')
    inputFirstName.send_keys('iTMS')

    inputLastName = driver.find_element(id: 'last-name')
    inputLastName.send_keys('Huấn luyện viên')

    inputJobTitle = driver.find_element(id: 'job-title')
    inputJobTitle.send_keys('QA')

    selectEducation = driver.find_element(id: 'radio-button-2')
    selectEducation.click

    selectGender = driver.find_element(id: 'checkbox-2')
    selectGender.click

    options = driver.find_element(id: 'select-menu')
    selectYearExperience = Selenium::WebDriver::Support::Select.new(options)
    selectYearExperience.select_by(:text, "2-4")
    sleep 5

  
     # select year on date-picker
    findDatePicker = driver.find_element(id: 'datepicker')
    findDatePicker.click
    selectYear = driver.find_element(class: 'datepicker-days')
    switchYear = driver.find_element(class: 'datepicker-switch')
    switchYear.click
    switchYear1 = driver.find_element(class: 'datepicker-months')
    switchYear2 = driver.find_element(class: 'datepicker-switch')
    switchYear2.click
    switchYear3 = driver.find_element(class: 'datepicker-years')
    wait = Selenium::WebDriver::Wait.new(timeout:15)
    wait.until{driver.find_element(xpath: "/html[1]/body[1]/div[2]/div[3]/table[1]/tbody[1]/tr[1]/td[1]/span[7]").displayed?}
    yearOption = driver.find_element(xpath: "/html[1]/body[1]/div[2]/div[3]/table[1]/tbody[1]/tr[1]/td[1]/span[7]")
    yearOption.click

    #select month on date-picker
    selectMonth = driver.find_element(class: 'datepicker-months')
    wait = Selenium::WebDriver::Wait.new(timeout:5)
    wait.until{driver.find_element(xpath: "/html[1]/body[1]/div[2]/div[2]/table[1]/tbody[1]/tr[1]/td[1]/span[10]").displayed?}
    monthOption = driver.find_element(xpath: "/html[1]/body[1]/div[2]/div[2]/table[1]/tbody[1]/tr[1]/td[1]/span[10]")
    monthOption.click


    # select day on the date-picker
    selectDate = driver.find_element(class: 'datepicker-days')
    wait = Selenium::WebDriver::Wait.new(timeout:5)
    wait.until{driver.find_element(xpath: "/html[1]/body[1]/div[2]/div[1]/table[1]/tbody[1]/tr[5]/td[1]").displayed?}
    dayOption = driver.find_element(xpath: "/html[1]/body[1]/div[2]/div[1]/table[1]/tbody[1]/tr[5]/td[1]")
    dayOption.click
    sleep 10
    
    # send form
    sendForm = driver.find_element(xpath: "//a[contains(text(),'Submit')]")
    sendForm.click


end