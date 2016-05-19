Feature: Sign up on QuickRent
  
  As a user 
  So that I can take advantage of all features of site
  I would want to create a profile by signing up 
  
  Background: QuickRent home page
   When I am on the QucikRent welcome page
   When I follow "Sign Up"
   Then I should be on the Sign Up page

  Scenario: create new account
   When I am on the Sign Up page
   And  I fill in "Name" with "Ankush"
   And  I fill in "Email" with "aarora3@binghamton.edu"
   And  I fill in "Password" with "arora"
   And I press "Submit"
   # Sign up successful
   Then I should see "User was successfully created"

 