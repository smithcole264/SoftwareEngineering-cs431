# step/definitions/create_new_event.#!/usr/bin/env ruby -wKU

Given(/^I am on the Create New Event page$/) do
  visit new_event_path
end

When(/^I enter "([^"]*)" in "([^"]*)"$/) do |value, field_id|
  fill_in field_id, :with => value, visible: false
end

When(/^I click on Create$/) do
  %{I press "Create"}
end

Then(/^I should see "([^"]*)"$/) do |arg|
  expect(page).to have_content arg
end
