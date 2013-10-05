Feature: Visit Google and Search

Scenario: Run a search for Behat
    Given I'm on "http://www.google.com"
    When I search for "behat"
    Then I should see "Behat"
