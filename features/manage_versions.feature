Feature: Manage versions
  In order to [goal]
  [stakeholder]
  wants [behaviour]
  
  Scenario: Register new version
    Given I am on the new version page
    When I fill in "Song" with "song_id 1"
    And I fill in "Encoding" with "encoding_id 1"
    And I fill in "Bitrate" with "bitrate_id 1"
    And I press "Create"
    Then I should see "song_id 1"
    And I should see "encoding_id 1"
    And I should see "bitrate_id 1"

  Scenario: Delete version
    Given the following versions:
      |song_id|encoding_id|bitrate_id|
      |song_id 1|encoding_id 1|bitrate_id 1|
      |song_id 2|encoding_id 2|bitrate_id 2|
      |song_id 3|encoding_id 3|bitrate_id 3|
      |song_id 4|encoding_id 4|bitrate_id 4|
    When I delete the 3rd version
    Then I should see the following versions:
      |Song|Encoding|Bitrate|
      |song_id 1|encoding_id 1|bitrate_id 1|
      |song_id 2|encoding_id 2|bitrate_id 2|
      |song_id 4|encoding_id 4|bitrate_id 4|
