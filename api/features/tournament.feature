Feature: Tournament Creation
  In Order to Start a Tournament
  A user
  Should be able to create the tournament at the first access

  @javascript
  Scenario: Creates the tournament
    Given I am on the tournament page
    When I fill in "name" with "Tournament"
    And I select "Single Elimination" from "Type"
    And I press "Create"
    Then I should see "Add Players"
  @javascript
  Scenario: Adds the players
    Given I am on the tournament page
    And I fill in "name" with "Tournament"
    And I select "Single Elimination" from "Type"
    When I press "Create"
    And I fill in "Add Players Names" with:
    """
      Vinícius
      Fernanda

    """
    Then I should see "Vinícius" in css path "#preview-0"
    And I should see "Fernanda" in css path "#preview-1"
  @javascript
  Scenario: Remove the players
    Given I am on the tournament page
    And I fill in "name" with "Tournament"
    And I select "Single Elimination" from "Type"
    And I press "Create"
    And I fill in "Add Players Names" with:
    """
      Vinícius
      Fernanda

    """
    When I click in css path "#remove-player-0"
    Then I should see "Fernanda" in css path "#preview-0"
    And the css path "#preview-1" should not exists
  @javascript
  Scenario: Save the players in the tournament
    Given I am on the tournament page
    And I fill in "name" with "Tournament"
    And I select "Single Elimination" from "Type"
    And I press "Create"
    And I fill in "Add Players Names" with:
    """
      Vinícius
      Fernanda

    """
    When I press "Save"
    Then I should see "Are you sure?"
    And I should see "You have 2 players."
    When I press "Yes"
    Then I should see "Tournament successfully created"

