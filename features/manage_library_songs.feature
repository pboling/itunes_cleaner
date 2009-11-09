Feature: Manage library_songs
  In order to [goal]
  [stakeholder]
  wants [behaviour]
  
  Scenario: Register new library_song
    Given I am on the new library_song page
    When I fill in "Song" with "song_id 1"
    And I fill in "Library" with "library_id 1"
    And I press "Create"
    Then I should see "song_id 1"
    And I should see "library_id 1"

  Scenario: Delete library_song
    Given the following library_songs:
      |song_id|library_id|
      |song_id 1|library_id 1|
      |song_id 2|library_id 2|
      |song_id 3|library_id 3|
      |song_id 4|library_id 4|
    When I delete the 3rd library_song
    Then I should see the following library_songs:
      |Song|Library|
      |song_id 1|library_id 1|
      |song_id 2|library_id 2|
      |song_id 4|library_id 4|
