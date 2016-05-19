Feature: View details of a post

As a User
I want to view details of a particular posting
So that I can view description, location, availability, price, owner, etc.

Background:  Houses have been added to the database
  
  Given the following houses exist:
  | title                   | rating     |  release_date |todate        |price  |
  | 207                     | Downtown   | 10-Apr-2016  |13-Apr-2016   |185    |

And I am on the House Listings page
And I follow "More about 207"
Then I should be on the details page for "207"

Scenario: Successfully view details of a post
  When I am on the details page for "207"
  Then I should see "Area"
  Then I should see "Price per day"
  Then I should see "Owner name"
  Then I should see "Owner email"
  Then I should see "Location"
  
Scenario: Request to rent the house
  When I am on the details page for "207"
  And I follow "Book this house"
  Then I should be on the House Listings page

Scenario: Edit details of a post
  When I am on the details page for "207"
  And I follow "Edit"
  Then I should be on the Edit House Listings page
  
Scenario: Back to house listings page
  When I am on the details page for "207"
  And I follow "Back to house listings"
  Then I should be on the House Listings page
