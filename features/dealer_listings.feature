Feature: Property Dealers Listings
 
  As a user, 
  I want to see the list of all Property Dealers
  
Background:  Property Dealers have been added to the database
  
  Given the following dealers exist:
  | name                    | area       | email               | contactnumber |
  | Jason                   | Vestal     | jason123@gmail.com  | 608-298-0302  |



Scenario: List Property Dealers
  Given I am on the Property Dealers Listings page
  Then I should see all Property Dealers
