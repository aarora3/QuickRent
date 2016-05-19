Feature: History
    As a admin
    I want to see the history details
    So that I can maintain records

Background:
    Given I am on the History page    
    
    
Scenario: History page content

    Then page should have text "History"
    
Scenario: Records
    
    Then I should see all histories
    
Scenario: Home

    When I follow "Back to Welcome page"
    
    Then I should be on the QucikRent welcome page

Scenario: I leave "search" empty
  
    When I fill in "search" with ""
    
    And I press "Search"
    
    Then I should be on the History page
    