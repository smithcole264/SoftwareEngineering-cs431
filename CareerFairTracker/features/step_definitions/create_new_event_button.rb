# step_definitions/create_new_event_button.#!/usr/bin/env ruby -wKU

Given(/^I am on the admin page$/) do
  visit admin_path
end

When(/^I click on Create New Event$/) do
  %{I press "Create New Event"}
end

Then(/^I should see "([^"]*)"$/) do |arg|
  expect(page).to have_content arg
end
