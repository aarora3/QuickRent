Feature: display list of houses sorted by different criteria
 
  As an avid renter
  So that I can quickly browse houses based on my preferences
  I want to see houses sorted by price

Background: houses have been added to database
  
  Given the following houses exist:
  | title                   | rating     | release_date |  name     | email                    | price      |
  | 11 Catherine Street     | Vestal     | 25-Mar-2016  | Ankush    | aarora3@binghamton.edu   | 325.00     |
  | 44 Schiller             | Binghamton | 26-Mar-2016  | Akshay    | adani@binghamton.edu     | 320.00     |
  | 207 main street         | Downtown   | 21-Mar-2016  | Rasika    | rkhiste1@binghamton.edu  | 315.00     |
  | 209 main street         | Endicott   | 10-Apr-2016  | Raksha    | rsindhu1@binghamton.edu  | 185.00     |
  | murray                  | Vestal     | 5-Apr-2016   | Ankitha   | skatrav1@binghamton.edu  | 250.00     |
  | oak street              | Downtown   | 15-Apr-2016  | Kalyani   | kvisapu1@binghamton.edu  | 275.00     |

  And I am on the House Listings page

Scenario: sort houses in increasing order of price
  When I follow "Price"
  # your steps here
  Then I should see "185.00" before "250.00"