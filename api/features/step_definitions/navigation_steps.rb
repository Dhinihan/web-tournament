require File.expand_path(
  File.join(
    File.dirname(__FILE__), "..", "support", "paths"
  )
)

Given(/^I am on the ([^ ]*) page$/) do |page|
  visit(path_to(page))
end

Given(/^I fill in "([^"]*)" with "([^"]*)"$/) do |field, value|
  fill_in(field, :with => value)
end

Given(/^I fill in "([^"]*)" with:$/) do |field, value|
  fill_in(field, :with => value)
end

Given(/^I select "([^"]*)" from "([^"]*)"$/) do |option, select_name|
  select(option, :from => select_name)
end

When(/^I press "([^"]*)"$/) do |button|
  click_button(button)
end

When(/^I take a picture$/) do 
  save_screenshot('/home/vinicius/tmp/cucumber.png')
end

Then(/^I should see "([^"]*)"$/) do |content|
  expect(page).to have_content(content)
end

Then(/^I should see "([^"]*)" in css path "([^"]*)"$/) do |text, css|
  expect(page).to have_css(css, :text => text)
end
