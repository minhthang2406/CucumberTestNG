Feature: My Profile
  As a User, I want to see my personal detail
  So that I can manage my information

  Scenario: Navigate to My Profile Page
    Given I am on Dashboard Page
    When I click on an Avatar button
    And I select  My Profile
    Then I can see My Profile Page