Feature: map on page
 
 As a user
 So that I can view my location if I want to
 I want to view my location on map

Background: user exists in database
  
  Given the following users exist:
  | name           | email                  | password   |user_id |
  | Ankush         | aarora3@binghamton.edu | password   |1       |
  | Rasika         | rkhiste1@binghamton.edu| khiste     |2       |
  Given I am on the My Account page for "Rasika"
  Then I should see a pin on the map