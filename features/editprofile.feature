Feature: Edit profile page
 
 As a user
 So that I can make updates if I want to
 I want to edit my profile

Background: user exists in database
  
  Scenario: Editing Profile 
  Given the following users exist:
  | name           | email                  | password   |user_id |
  | Ankush         | aarora3@binghamton.edu | password   |1       |
  | Rasika         | rkhiste1@binghamton.edu| khiste     |2       |
 
  Given I am on the My Account page for "Rasika"
  Then I should see Edit Profile
  When I follow Edit Profile
  Then I should see Name
  
 
 
 
  
  