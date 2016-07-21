Feature: Tournament Creation
  In Order to Start a Tournament
  A user
  Should be able to create the tournament at the first access

  Scenario: Creates the tournament
    Given I am on the tournament page
    When I fill in "name" with "Tournament"
    And I select "Single Elimination" from "Type"
    And I press "Create"
    Then I should see "Add Players"
  Scenario: Adds the players using enter
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
  Scenario: Button Add should work too
    Given I am on the tournament page
    And I fill in "name" with "Tournament"
    And I select "Single Elimination" from "Type"
    When I press "Create"
    And I fill in "Add Players Names" with "Vinícius"
    And I press "Add"
    And I fill in "Add Players Names" with "Fernanda"
    And I press "Add"
    Then I should see "Vinícius" in css path "#preview-0"
    And I should see "Fernanda" in css path "#preview-1"
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
  @inp
  Scenario: Should be able to crate a round with 4 players
    Given I am on the tournament page
    And I fill in "name" with "Tournament"
    And I select "Single Elimination" from "Type"
    And I press "Create"
    And I fill in "Add Players Names" with:
    """
      Player-1
      Player-2
      Player-3
      Player-4

    """
    And I wait until I see "Player-3"
    When I press "Save"
    And I wait
    And I press "Yes"
    And I press "OK"
    Then I should see "Player-1" in css path "#match-1-1"
    Then I should see "Player-2" in css path "#match-1-2"
    Then I should see "Player-3" in css path "#match-2-1"
    Then I should see "Player-4" in css path "#match-2-2"
    Then I should see "Winner of Match 1" in css path "#match-3-1"
    Then I should see "Winner of Match 2" in css path "#match-3-2"

