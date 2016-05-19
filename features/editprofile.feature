Feature: Edit profile
 
 As a user
 So that I can edit my details after logged in

Background: users have been added to database
  
  Scenario: Editing profile
  Given I am on the login page
  When I follow "Edit Profile"
  Then I should be on the Edit page

