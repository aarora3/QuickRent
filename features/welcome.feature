# Feature: Welcome page
#     Welcome page should have content
 
#     Scenario: Should have welcome page
#         Given I am viewing welcome page
#         Then page should have the content "Welcome to QuickRent."

Feature: welcome page links
  As a new user 
  I want to get onto the site 
  so that I can look at the site and LOGIN/SIGNUP.
  
Scenario: Login link
  Given I am on the QucikRent welcome page 
  When  I follow "Login"
  Then I should be on the Login page
  

Scenario: Sign Up link
  Given I am on the QucikRent welcome page
  When  I follow "Sign Up"
  Then I should be on the Sign Up page

Scenario: House Listings link
  Given I am on the QucikRent welcome page
  When  I follow "House Listings"
  Then I should be on the House Listings page

Scenario: About Us link
  Given I am on the QucikRent welcome page
  When  I follow "About Us"
  Then I should be on the About Us page