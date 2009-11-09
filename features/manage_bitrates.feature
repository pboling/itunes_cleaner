Feature: Manage bitrates
  In order to [goal]
  [stakeholder]
  wants [behaviour]
  
  Scenario: Register new bitrate
    Given I am on the new bitrate page
    When I fill in "Name" with "name 1"
    And I fill in "Code" with "code 1"
    And I press "Create"
    Then I should see "name 1"
    And I should see "code 1"

  Scenario: Delete bitrate
    Given the following bitrates:
      |name|code|
      |name 1|code 1|
      |name 2|code 2|
      |name 3|code 3|
      |name 4|code 4|
    When I delete the 3rd bitrate
    Then I should see the following bitrates:
      |Name|Code|
      |name 1|code 1|
      |name 2|code 2|
      |name 4|code 4|
