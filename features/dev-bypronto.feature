Feature: Access to dev.bypronto.com

  Background:
    Given I am on "/blog"

  Scenario: search blog found
    When I fill in "s" with "first"
      And I press "Search"
      And I wait for result
    Then I should see "Search Results for: first"

  Scenario: search blog not found
    When I fill in "s" with "second"
      And I press "Search"
      And I wait for result
    Then I should see "Nothing Found"
