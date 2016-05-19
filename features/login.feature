Feature: login to QuickRent
 
 As a user
 So that I can access the features of the QuickRent
 I want to login in QuickRent

Background: users have been added to database
  
  Given the following users exist:
  | name           | email                  | password|     admin|
  | Ankush         | aarora3@binghamton.edu | arora   |     true |
  | Rasika         | rasika.k22@gmail.com   | rasika  |          |

  And I am on the QucikRent welcome page
  When I follow "Login"
  Then I should be on the Login page

Scenario: login with valid credentials
  When I fill in "Email" with "rasika.k22@gmail.com"
  When I fill in "Password" with "rasika"
  And I press "Submit"
  # Then login should be successful
  Then I should see "Login Successful"

Scenario: login with invalid credentials
  When I fill in "Email" with "abc@xyz.com"
  When I fill in "Password" with "12345"
  And I press "Submit"
  # Then login should be unsuccessful
  Then I should see "Invalid Username/Password"

Scenario: login with blank credentials
  When I fill in "Email" with ""
  When I fill in "Password" with ""
  And I press "Submit"
  # Then login should be unsuccessful
  Then I should be on the Login page
  
  Scenario: login with admin credentials
    When I fill in "Email" with "aarora3@binghamton.edu"
    When I fill in "Password" with "arora"
    And I press "Submit"
    # Then login should be unsuccessful
    Then I should be on the Admin page