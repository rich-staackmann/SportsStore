Feature: Store

  Background:
    Given I am on the homepage
    
  Scenario: I can access the Chess products
    When I click on the Chess link
    Then I am on the Chess products page
    
  Scenario: I can access the Soccer products
    When I click on the Soccer link
    Then I am on the Soccer products page
    
  Scenario: I can access the Watersports products
    When I click on the Watersports link
    Then I am on the Watersports products page
    
  Scenario: I can navigate the catalog by page
    When I click on page 2
    Then I am redirected to page 2 of the catalog
    
  Scenario: I can access my cart
    When I click on the Checkout link
    Then I am redirected to the Cart page
    
  Scenario: I add an item to the cart
    When I add the Soccer Ball item
    Then I am redirected to the Cart page
    
  Scenario: I can remove an item from my cart
    Given I add the Soccer Ball item
    When I click on the Remove button in my cart
    Then my cart should be empty
  
  Scenario: I can continue shopping from my cart
    Given I add the Soccer Ball item
    When I click on the Continue shopping link
    Then I am redirected to the homepage
    
  Scenario: I can checkout
    Given I add the Soccer Ball item
    When I click on the Checkout now link
    Then I am redirected to the Checkout page
    
  Scenario: I can't checkout with invalid inforamation
    Given I add the Soccer Ball item
    Given I click on the Checkout now link
    When I enter invalid checkout information
    Then I am given a warning and not allowed to checkout