#signup_company.feature

Feature: Check the Company signup View
  Test Company signup Page after pressing Sign Up

Scenario: Check for the Company signup criteria
  Given I am on the Home Page
  When I click Sign Up
  Then I should see fill-in criteria for Name, Email, Password, and Code.

#login_company.feature

Feature: Check the Company View page
  Test Company View Page after logging in with email and password

Scenario: Check for the Old Career Fairs Attended table and New Events table
  Given I am on the Login page
  When I enter email
  And I enter password
  And I click on Login
  Then I should see the Company View page with the Old Career Fairs Attended table and the New Events table

#event_signup_company.feature

Feature: Check the Company Event Sign Up View page
  Test Company Event Sign Up View Page after clicking on a New Event

Scenario: Check for the Company Event Sign Up criteria
  Given I am on the Company View page
  When I click on a New Event from the table
  Then I should see Company Name, Job Position, Major Requirement, Min Grad Date and Generate QR Code

#prospect_view_company.feature

Feature: Check the Prospect View page
  Test Prospect View Page after clicking on a Old Career Fair Attended in table

Scenario: Check for the Prospective Students list
  Given I am on the Company View page
  When I click on an Old Career Fair Attended
  Then I should see the Prospect page with the Prospective Students table

#view_of_student_company.feature

Feature: Check the View of Student page
  Test View of Student Page after clicking on a Prospective Student from table

Scenario: Check for the View of Student criteria
  Given I am on the Prospect View page
  When I click on a Prospective Student from the table
  Then I should see Student Name, Major, Minor, GPA, Classification, Grad Date, Resume


#login_admin.feature

Feature: Check the Administrator View page
  Test Admin View Page after logging in with email and password

Scenario: Check for the Career Fair Events table and Create New Event button
  Given I am on the Login page
  When I enter email
  And I enter password
  And I click on Login
  Then I should see the Admin View page with the Career Fair Events table and the Create New Event button

#create_new_event_button.feature

Feature: Check the New Event View
  Test the Event Name, Date Range of Event, and Create button after clicking on the Create New Event

Scenario: Check for New Event View in result
  Given I am on the Admin View page
  When I click on Create New Event
  Then I should see the Event Name, Date Range of Event, and Create button

#create_new_event.feature

Feature: Check for return to Admin View page
  Test the Create button for event creation

Scenario: Check for completion of new event
  Given I am on the Create New Event page
  When I enter Event Name
  And I enter Date Range of Event
  And I click on Create
  Then I should see the Admin View page

#attendance_view.feature

Feature: Check the Event info
  Test the Event table with Student names and UIN

Scenario: Check for Event table from events list
  Given I am on the Admin View page
  When I click on a Career Fair Event in the Career Fair Events table
  Then I should see a table with student info and the Name of the Event for the clicked on Event


#attendance_excel_export.feature

Feature: Export the attendance table
  Test that attendance table is exported to xlsx file

Scenario: Admin exports attendance list
  Given I am on the Admin Attendance View page
  When I click on Export
  Then the attendance list should be exported as a xlsx file
