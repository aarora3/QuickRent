Feature: House Listings
 
  As a user, 
  I want to see the list of houses
  
Background:  Houses have been added to the database
  
  Given the following houses exist:
  | title                   | rating     | release_date |
  | 11 Catherine Street     | Vestal     | 25-Mar-2016  |
  | 44 Schiller             | Binghamton | 26-Mar-2016  |
  | 207                     | Downtown   | 21-Mar-2016  |
  | 209                     | Endicott   | 10-Apr-2016  |
  | murray                  | Vestal     | 5-Apr-2016   |

#Scenario: List the menu items
 # When I am on the Bearcat home page
#  And I click on Menu Listing link
 # Then I go to "Menu Listing page"
#  And I should see the "menu list" 
  #And  I should see " a max of 10 menu items listed in one page with price and rating for each of the menu item"
  
Scenario: List houses
  Given I am on the House Listings page
  Then I should see all house listings
