require 'selenium-webdriver'
require 'rspec/expectations'
include RSpec::Matchers

Before do
  @driver = Selenium::WebDriver.for :chrome
end

Given("I am on the login page") do
  @driver.navigate.to "https://dev-frontendsvr-01.borneo-indobara.com/login"
end

When("I choose non isafe login option") do
  wait = Selenium::WebDriver::Wait.new(timeout: 10)
  btn_non_isafe = wait.until {
    element = @driver.find_element(id: 'btn_non_isafe')
    element if element.displayed?
  }
  btn_non_isafe.click
end

When("I fill in username and password") do
  @driver.find_element(name: 'username').send_keys('admin.ga')
  @driver.find_element(name: 'password').send_keys('gaPwd123')
end

When("I press the login button") do
  wait = Selenium::WebDriver::Wait.new(timeout: 10)
  login_button = wait.until {
    element = @driver.find_element(xpath: "//button[text()='Login']")
    element if element.displayed?
  }
  login_button.click
end

Then("I should see the homepage") do
  wait = Selenium::WebDriver::Wait.new(timeout: 10)
  wait.until { @driver.current_url == "https://dev-frontendsvr-01.borneo-indobara.com/dashboards" }
  
  expect(@driver.current_url).to eq("https://dev-frontendsvr-01.borneo-indobara.com/dashboards")
end

After do
  @driver.quit
end
