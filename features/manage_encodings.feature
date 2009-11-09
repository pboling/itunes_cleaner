Feature: Manage encodings
  In order to [goal]
  [stakeholder]
  wants [behaviour]
  
  Scenario: Register new encoding
    Given I am on the new encoding page
    When I fill in "Name" with "name 1"
    And I fill in "Code" with "code 1"
    And I press "Create"
    Then I should see "name 1"
    And I should see "code 1"

  Scenario: Delete encoding
    Given the following encodings:
      |name|code|
      |name 1|code 1|
      |name 2|code 2|
      |name 3|code 3|
      |name 4|code 4|
    When I delete the 3rd encoding
    Then I should see the following encodings:
      |Name|Code|
      |name 1|code 1|
      |name 2|code 2|
      |name 4|code 4|
