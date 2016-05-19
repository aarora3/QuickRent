Feature: FAQ 
    FAQ page should have content
 
Scenario: FAQ page content
    Given I am on the FAQ page
    Then page should have text "Frequently Asked Questions"

    
Scenario: Home
    Given I am on the FAQ page
    When I follow "Back to Welcome page"
    Then I should be on the QucikRent welcome page