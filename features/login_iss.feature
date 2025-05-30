Feature: Login

  Scenario: Successful login
    Given I am on the login page
    When I choose non isafe login option
    When I fill in username and password
    And I press the login button
    Then I should see the homepage

