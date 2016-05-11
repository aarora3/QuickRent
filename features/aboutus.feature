Feature: About Us
    About Us page should have content
 
Scenario: About Us page content
    Given I am on the About Us page
    Then page should have text "This project will be based on the Online Renting Services through which a lot of people basically for students will have a very centralized way and an easy way of finding houses for various purposes. More deatils: http://www.agileventures.org/projects/quickrent"
    
Scenario: Home
    Given I am on the About Us page
    When I follow "Back to Welcome page"
    Then I should be on the QucikRent welcome page