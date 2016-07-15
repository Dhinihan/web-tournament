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

    
