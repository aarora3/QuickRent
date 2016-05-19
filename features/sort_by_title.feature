Feature: display list of houses sorted by different criteria
 
  As an avid renter
  So that I can quickly browse houses based on my preferences
  I want to see houses sorted by name

Background: houses have been added to database
  
  Given the following houses exist:
  | title                   | rating     | release_date |  name     | email                    | price  |
  | 11 Catherine Street     | Vestal     | 25-Mar-2016  | Ankush    | aarora3@binghamton.edu   | 40     |
  | 44 Schiller             | Binghamton | 26-Mar-2016  | Akshay    | adani@binghamton.edu     | 50     |
  | 207 main street         | Downtown   | 21-Mar-2016  | Rasika    | rkhiste1@binghamton.edu  | 60     |
  | 209 main street         | Endicott   | 10-Apr-2016  | Raksha    | rsindhu1@binghamton.edu  | 70     |
  | murray                  | Vestal     | 5-Apr-2016   | Ankitha   | skatrav1@binghamton.edu  | 80     |

  And I am on the House Listings page

Scenario: sort houses alphabetically
  When I follow "House"
  # your steps here
  Then I should see "11 Catherine Street" before "44 Schiller"
  
