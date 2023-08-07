Feature: Login to CRM
  As a user, I want to be able to log into the CRM system
  So that I can manage customer information

  Background: load data test from excel file
    Given load data from excel


  @login_success
  Scenario: Successful login
    Given I am on the login page
    When I enter my username and password
    And I click the Login button
    Then I should be taken to the Dashboard page
    And I should see the Customers menu


  @login_failed
  Scenario: Failure login with invalid username
    Given I am on the login page
    When I enter wrong username
    And I click the Login button
    Then I should see an error message

  Scenario: Failure login with invalid password
    Given I am on the login page
    When I enter wrong password
    And I click the Login button
    Then I should see an error message

  Scenario: Failure login with invalid username and password
    Given I am on the login page
    When I enter wrong username and password
    And I click the Login button
    Then I should see an error message

    Scenario Outline: Eating
      Given There are "<firstCount>" cucumbers
      When I eat "<ateCount>" cucumbers
      Then I have "<left>" cucumbers

      Examples:
      | firstCount | ateCount | left |
      | 15         | 5          | 10   |
      | 20         | 5          | 15   |

    Scenario: Login by Line Account
      Given I am on the login page
      When I click on login by Line button
      Then I input Line username and password
      And I click the Login by Line Button
      Then I should see the Dashboard Page

  Scenario: Login By Username and Password
    Given I am on the First Page
    When I click on the button of Login by Username and Password
    Then I can see the Login Page of Username and Password
    And I input my username and password
    And I press sign in button
    Then I can see the Dashboard page

    Scenario: Forgot username and password
      Given I am on the login page
      When  I click on forgot password
      And I input my email address
      Then I see the success message of changed password
