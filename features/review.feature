Feature: Ratings and Comments to a House
  
  As a User , 
  if I like a particular house, I can provide my reviews for that house.
  
Background: houses have been added to database

Given the following houses exist:
  | title                   | rating     | release_date |
  | 11 Catherine Street     | Vestal     | 25-Mar-2016  |
  | 44 Schiller             | Binghamton | 26-Mar-2016  |
  | 207                     | Downtown   | 21-Mar-2016  |
  | 209                     | Endicott   | 10-Apr-2016  |
  | murray                  | Vestal     | 5-Apr-2016   |

Scenario: Go to Review page of house
  Given I am on the House Listings page
  When I follow Reviews of "(.*?)"  
  Then I should see My Reviews page

Scenario: Create new Review
  Given I am on My Reviews page
  When I follow "New Review"
  Then I should be on the New Reviews page
