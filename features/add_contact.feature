Feature: Add a contact
    As a user
    In order to keep track of my peeps
    I want to add a contact to my address book

    Background:
        Given I am on the home page
        And I follow "New Contact"
        Then I should be on the new contact page

    Scenario: Add a contact
        When I fill in "Anthony" for "First Name"
        And I fill in "Eden" for "Last Name"
        And I press "Save"
        Then I should be on the contacts list page
        And I should see "Anthony Eden"

    Scenario: Fail to add a contact if I leave all fields blank
        When I press "Save"
        And I should see "1 error"
