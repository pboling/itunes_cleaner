Feature: Manage songs
  In order to [goal]
  [stakeholder]
  wants [behaviour]
  
  Scenario: Register new song
    Given I am on the new song page
    When I fill in "Name" with "name 1"
    And I fill in "Album" with "album 1"
    And I fill in "Artist" with "artist 1"
    And I fill in "Length" with "length 1"
    And I press "Create"
    Then I should see "name 1"
    And I should see "album 1"
    And I should see "artist 1"
    And I should see "length 1"

  Scenario: Delete song
    Given the following songs:
      |name|album|artist|length|
      |name 1|album 1|artist 1|length 1|
      |name 2|album 2|artist 2|length 2|
      |name 3|album 3|artist 3|length 3|
      |name 4|album 4|artist 4|length 4|
    When I delete the 3rd song
    Then I should see the following songs:
      |Name|Album|Artist|Length|
      |name 1|album 1|artist 1|length 1|
      |name 2|album 2|artist 2|length 2|
      |name 4|album 4|artist 4|length 4|
