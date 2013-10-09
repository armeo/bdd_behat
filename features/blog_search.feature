Feature: Blog Search
  As a bloger
  I want to search post in blog page
  So that i can check my post is exist.

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
