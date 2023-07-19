Feature: Login to CRM
  As a user, I want to be able to log into the CRM system
  So that I can manage customer information

  Background: load data test from excel file
    Given load data from excel

  Scenario: Successful login
    Given I am on the login page
    When I enter my username and password
    And I click the Login button
    Then I should be taken to the Dashboard page
    And I should see the Customers menu



  Scenario: Failure login
    Given I am on the login page
    When I enter wrong username and password
    And I click the Login button
    Then I should see an error message
