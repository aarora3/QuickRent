Feature: UserHistory
    As a user
    I want to see the history details
    So that I can see my records

Background:
    Given I am on the User History page    
    
    
Scenario: User History page content

    Then page should have text "Welcome"
    
    Then I should see user history page
    
Scenario: Home

    When I follow "Back to Welcome page"
    
    Then I should be on the QucikRent welcome page    
    