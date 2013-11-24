@wip
Feature: Test

Scenario: Search for a term on youtube
  Given I am on YouTube
  When I fill in "search_query" with "text adventure"
  And I press "search-btn"
  Then I should see "GET LAMP: The Text Adventure Documentary"
  
Scenario: Search for term on google
  Given I go to Google
  When I click Search