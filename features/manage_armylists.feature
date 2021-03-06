Feature: Armylist management
  As a user
  I want to create an armylist
  So I can manage my armylist online
  
  Scenario: Successful Creation
    Given I am on the armylist creation page
    When I add a new armylist
    Then I should see the page for my newly created armylist
  
  Scenario: Successful Edit
    Given I have a created armylist
    And I am on the edit page for my armylist
    When I change the name of the armylist
    And I should see the new name of my armylist
  
  @javascript
  Scenario: Successful Delete
    Given I have a created armylist
    And I am on the armylist list page
    When I delete the armylist
    Then I should no longer see the armylist