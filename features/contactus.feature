Feature: Contact Us
    As a viewer
    I want to see the Contact Information
    So that I can have Contact Information

Scenario: Contact Us page content
    Given I am on the Contact Us page
    Then page should have text "You may contact any of the developers below for more information, queries or suggestions."
    
Scenario: Home
    Given I am on the Contact Us page
    When I follow "Back to Welcome page"
    Then I should be on the QucikRent welcome page