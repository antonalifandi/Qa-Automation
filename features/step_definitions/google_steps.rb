require 'selenium-webdriver'

driver = nil

Given("I open Google") do
  driver = Selenium::WebDriver.for :chrome
  driver.navigate.to "https://www.google.com"
end

When("I search for {string}") do |term|
  input = driver.find_element(name: "q")
  input.send_keys(term)
  input.submit
  sleep 2
end

Then("I should see {string} in the results") do |expected|
  body = driver.find_element(tag_name: "body").text
  raise "Expected to find #{expected}" unless body.include?(expected)
  driver.quit
end