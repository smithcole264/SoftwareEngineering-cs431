#login_administrator.feature

Feature: Check the Administrator View page
  Test Administrator View Page after logging in with email and password

Scenario: Check for the Career Fair Events table and Create New Event button
  Given I am on the Login page
  When I enter email a
  And I enter password
  And I click on Login
  Then I should see the Administrator View page with the Career Fair Events table and the Create New Event button

#create_new_event_button.feature

Feature: Check the New Event View
  Test the Event Name, Date Range of Event, and Create button after clicking on the Create New Event

Scenario: Check for New Event View in result
  Given I am on the Administrator View page
  When I click on Create New Event
  Then I should see the Event Name, Date Range of Event, and Create button

#create_new_event.feature

Feature: Check for return to Administrator View page
  Test the Create button for event creation

Scenario: Check for completion of new event
  Given I am on the Create New Event page
  When I enter Event Name
  And I enter Date Range of Event
  And I click on Create
  Then I should see the Administrator View page

#attendance_view.feature

Feature: Check the Event info
  Test the Event table with Student names and UIN

Scenario: Check for Event table from events list
  Given I am on the Administrator View page
  When I click on a Career Fair Event in the Career Fair Events table
  Then I should see a table with student info and the Name of the Event for the clicked on Event
