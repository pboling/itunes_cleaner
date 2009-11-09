Given /^the following library_songs:$/ do |library_songs|
  LibrarySong.create!(library_songs.hashes)
end

When /^I delete the (\d+)(?:st|nd|rd|th) library_song$/ do |pos|
  visit library_songs_url
  within("table > tr:nth-child(#{pos.to_i+1})") do
    click_link "Destroy"
  end
end

Then /^I should see the following library_songs:$/ do |expected_library_songs_table|
  expected_library_songs_table.diff!(table_at('table').to_a)
end
