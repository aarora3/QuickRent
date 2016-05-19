Feature: Post an Ad on QuickRent
 
    As a user
    So that I can list my space for rent
    I want to post an ad


Background: I am a user
  Scenario: navigate to Post an Ad page
    Given I am on the House Listings page
    When I follow "Post an Ad"
    Then I should be on the Post an Ad page

  Scenario: post an ad
    Given I am on the Post an Ad page
    When  I fill in "House Number / Street" with "11 Catherine St"
    And I press "Submit"
    Then I should see "11 Catherine St was successfully created."

  Scenario: new ad visible in House Listings table
    Given I am on the Post an Ad page
    When  I fill in "House Number / Street" with "11 Catherine St"
    And I press "Submit"
    Then I should see "11 Catherine St" in the House Listings table