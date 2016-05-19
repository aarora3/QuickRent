Feature: Messaging
  
  As a User , 
  if I want to talk with someone, I can message
  
   Scenario: Go to Messages page 
   Given I am on the QucikRent welcome page
   When I follow "Messages"
   Then I should be on the Messages page
 
  Scenario: Create new Message
  Given I am on the New Message page
  Then I should see "Description"
