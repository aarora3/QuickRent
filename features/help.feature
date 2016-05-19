Feature: Help
    Help page should have content
 
Scenario: Home
    Given I am on the Help page
    When I follow "Back to Welcome page"
    Then I should be on the QucikRent welcome page
    
Scenario: Cost path
Given I am on the Help page
When I follow "1. How is the cost determined for the house ?"
Then I should be on Cost page

Scenario: Need path
Given I am on the Help page
When I follow "2. Why do I need to have QuickRent Profile ?"
Then I should be on Need page

Scenario: Proedit path
Given I am on the Help page
When I follow "3. How do I edit my profile ?"
Then I should be on Proedit page