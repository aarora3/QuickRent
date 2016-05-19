Feature: myaccount for QuickRent
  
As a User
I want to view my profile
So that I can make updates if want to

Background: users have been added to database
  
    Given the following users exist:
  | name        | password|  email|
  | Ankush Arora | password   |  aarora3@binghamton.edu   |
  
Scenario: Privacy Setting path
Given I am on the My Account page
When I follow "Privacy Setting"
Then I should be on Privacy Setting page

Scenario: Reviews path
Given I am on the My Account page
When I follow "My Reviews"
Then I should be on My Reviews page

Scenario: Edit Profile path
Given I am on the My Account page
When I follow "Edit Profile"
Then I should be on Edit Profile page

Scenario: Home
    Given I am on the My Account page
    When I follow "Back to Welcome page"
    Then I should be on the QucikRent welcome page