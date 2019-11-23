# step_definitions/attendace_excel_export.rb

Given(/^I am on the admin attendance page$/) do
  visit admin_attendance_path
end

When(/^I click on Export$/) do 
  %{I press "Export"}
end

Then(/^I should see exported xlsx file$/) do \arg\
  expect(file).to have_content arg
end