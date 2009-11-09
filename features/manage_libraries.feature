Feature: Manage libraries
  In order to [goal]
  [stakeholder]
  wants [behaviour]
  
  Scenario: Register new library
    Given I am on the new library page
    When I fill in "Name" with "name 1"
    And I fill in "Location" with "location 1"
    And I fill in "Cleaned at" with "cleaned_at 1"
    And I press "Create"
    Then I should see "name 1"
    And I should see "location 1"
    And I should see "cleaned_at 1"

  Scenario: Delete library
    Given the following libraries:
      |name|location|cleaned_at|
      |name 1|location 1|cleaned_at 1|
      |name 2|location 2|cleaned_at 2|
      |name 3|location 3|cleaned_at 3|
      |name 4|location 4|cleaned_at 4|
    When I delete the 3rd library
    Then I should see the following libraries:
      |Name|Location|Cleaned at|
      |name 1|location 1|cleaned_at 1|
      |name 2|location 2|cleaned_at 2|
      |name 4|location 4|cleaned_at 4|
