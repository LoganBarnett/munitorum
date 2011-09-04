Feature: Ork validation
  As a user
  I should be able to validate my Ork armylist
  so I can have a legal armylist when playing the 40k
  
  Scenario: Basic Force Composition Validation - 1 HQ, 2 Troops (Valid)
    Given I have an ork armylist with a Warboss and two troops
    When I view the armylist page
    Then I should see that the armylist is valid
    
  Scenario: Basic Force Composition - 1 HQ, 1 Troop (Invalid)
    Given I have an ork armylist with a Warboss and one troop
    When I view the armylist page
    Then I should see that the armylist is invalid
    And I should see that the armylist is missing one troop
    
  Scenario: Basic Force Composition - 2 Troops (Invalid)
    Given I have an ork armylist with two troops
    When I view the armylist page
    Then I should see that the armylist is invalid
    And I should see that the armylist is missing one HQ
    
  Scenario: Basic Force Composition Validation - Warboss allows a unit of Nobz to be treated as troops (Valid)
    Given I have an ork armylist with a Warboss, a unit of Ork Boyz, and a unit of Nobz
    When I view the armylist page
    Then I should see that the armylist is valid

  Scenario: Basic Force Composition Validation - Warboss allows a unit of Nobz to be treated as troops (Invalid)
    Given I have an ork armylist with a Warboss, and two units of Nobz
    When I view the armylist page
    Then I should see that the armylist is invalid
    And I should see that the armylist is missing one troop