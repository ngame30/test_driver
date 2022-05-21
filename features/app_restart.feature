Feature: Startup

  Scenario: add one
    Given I init scenario "AdderSetTo1"
    When I tap the "increment" button
    Then I expect the "counter" to be "1"
    When I tap the "increment" button
    Then I expect the "counter" to be "2"
    When I tap the "increment" button
    Then I expect the "counter" to be "3"
    
  Scenario: add two
    Given I init scenario "AdderSetTo2"
    When I tap the "increment" button
    Then I expect the "counter" to be "2"
    When I tap the "increment" button
    Then I expect the "counter" to be "4"
    When I tap the "increment" button
    Then I expect the "counter" to be "6"
    
  Scenario: add three
    Given I init scenario "AdderSetTo3"
    When I tap the "increment" button
    Then I expect the "counter" to be "3"
    When I tap the "increment" button
    Then I expect the "counter" to be "6"
    When I tap the "increment" button
    Then I expect the "counter" to be "9"
