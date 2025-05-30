Feature: Google Search

  Scenario: Search for chatgpt.com on Google
    Given I open Google
    When I search for "chatgpt.com"
    Then I should see "chatgpt.com" in the results