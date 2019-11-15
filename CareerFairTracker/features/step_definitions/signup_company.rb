#step_definitions/signup_company.#!/usr/bin/env ruby -wKU

Given(/^I am on the home page$/) do
  visit home_path
end

When(/^I click on Sign Up$/) do
  %{I press "Sign Up"}
end

Then(/^I should see "([^"]*)"$/) do |arg|
  expect(page).to have_content arg
end
