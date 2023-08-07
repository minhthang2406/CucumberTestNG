Feature: This Case focus on the main flow of Friends Application
  Scenario: User can navigate to page of Brand selection
    Given User is on Dashboard Page
    When User select Motor
    Then User can see the Brand list to select

  Scenario: User can select Brand and Model, sub model
    Given User is on Page of Brand list
    When user select brand
    And User select model
    And User select sub model
    Then User can see the list of plans page

