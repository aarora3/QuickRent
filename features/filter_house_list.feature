Feature: display list of houses filtered by area
 
  As a concerned parent
  So that I can quickly browse houses appropriate for my family
  I want to see houses matching only certain ratings

Background: houses have been added to database

  Given the following houses exist:
  | title                   | rating     | release_date |  name     | email                    | price      |
  | 11 Catherine Street     | Vestal     | 25-Mar-2016  | Ankush    | aarora3@binghamton.edu   | 325.00     |
  | 44 Schiller             | Binghamton | 26-Mar-2016  | Akshay    | adani@binghamton.edu     | 320.00     |
  | 207 main street         | Downtown   | 21-Mar-2016  | Rasika    | rkhiste1@binghamton.edu  | 315.00     |
  | 209 main street         | Endicott   | 10-Apr-2016  | Raksha    | rsindhu1@binghamton.edu  | 185.00     |
  | murray                  | Vestal     | 5-Apr-2016   | Ankitha   | skatrav1@binghamton.edu  | 250.00     |
  | oak street              | Downtown   | 15-Apr-2016  | Kalyani   | kvisapu1@binghamton.edu  | 275.00     |

  And  I am on the House Listings page

Scenario: restrict to houses with 'Vestal' or 'Endicott' ratings
  When I check the following ratings: Vestal Endicott
  
  # enter step(s) to uncheck all other checkboxes
  When I uncheck the following ratings: Downtown Binghamton
  
  # enter step to "submit" the search form on the homepage
  When I press "Refresh"
  
  # enter step(s) to ensure that PG and R movies are visible
  Then I should see the following houses: "11 Catherine Street", "209", "murray"

  # enter step(s) to ensure that other movies are not visible
  And I should not see the following houses: "44 Schiller", "207"

Scenario: all ratings selected
  # see assignment
  When I check the following ratings: Vestal Binghamton Downtown Endicott
  And I press "Refresh"
  Then I should see all the houses
