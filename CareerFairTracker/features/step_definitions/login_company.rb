#step_definitions/login_company.rb

Given(/^I am on the login page$/) do
  visit login_path
end

When(/^I enter "([^"]*)" in "([^"]*)"$/) do |value, field_id|
  fill_in field_id, :with => value, visible: false

When(/^I click on Login$/) do
  %{I press "Login"}
end

Then(/^I should see "([^"]*)"$/) do |arg|
  expect(page).to have_content arg
end