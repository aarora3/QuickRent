Feature: Place
    Place page should have content
 
Scenario: Place
    Given I am on the Place page
    When I follow "Back to Welcome page"
    Then I should be on the QucikRent welcome page
    
Scenario: Mainst path
Given I am on the Place page
When I follow "Main street from 50 main street to 327 mains street"
Then I should be on Mainst page

Scenario: Chapin path
Given I am on the Place page
When I follow "Chapin, walnut, Arthur, Cedar, Beethoven, Schubert, Bellevue, Gothe, Oak,Chestnut"
Then I should be on Chapin page

Scenario: Floral path
Given I am on the Place page
When I follow "Floral and streets around it"
Then I should be on Floral page