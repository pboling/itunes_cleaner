Feature: Manage songs
  In order to [goal]
  [stakeholder]
  wants [behaviour]
  
  Scenario: Register new song
    Given I am on the new song page
    When I fill in "Name" with "name 1"
    And I fill in "Bitrate" with "bitrate 1"
    And I fill in "Length" with "length 1"
    And I fill in "Encoding" with "encoding_id 1"
    And I press "Create"
    Then I should see "name 1"
    And I should see "bitrate 1"
    And I should see "length 1"
    And I should see "encoding_id 1"

  Scenario: Delete song
    Given the following songs:
      |name|bitrate|length|encoding_id|
      |name 1|bitrate 1|length 1|encoding_id 1|
      |name 2|bitrate 2|length 2|encoding_id 2|
      |name 3|bitrate 3|length 3|encoding_id 3|
      |name 4|bitrate 4|length 4|encoding_id 4|
    When I delete the 3rd song
    Then I should see the following songs:
      |Name|Bitrate|Length|Encoding|
      |name 1|bitrate 1|length 1|encoding_id 1|
      |name 2|bitrate 2|length 2|encoding_id 2|
      |name 4|bitrate 4|length 4|encoding_id 4|
