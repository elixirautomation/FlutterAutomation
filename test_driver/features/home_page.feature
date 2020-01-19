Feature: Home Page Functionalities
    User should be able to perform add, substract and close alert actions also should be able to view the current state of application with alert text.

    Scenario: Counter increases when increment button is pressed and decreases when substract is pressed
        Given I expect initial state of the app
        When I tap the increment button
        Then I expect the counter to be 1
        When I tap the substract button
        Then I expect initial state of the app

    Scenario: Alert text appears when status button is pressed
        Given I expect initial state of the app
        When I tap the status button
        Then I expect alert text to be Welcome to Elixir Automation 0
        When I tap close button
        Then I expect initial state of the app