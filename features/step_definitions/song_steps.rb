Given /^the following songs:$/ do |songs|
  Song.create!(songs.hashes)
end

When /^I delete the (\d+)(?:st|nd|rd|th) song$/ do |pos|
  visit songs_url
  within("table > tr:nth-child(#{pos.to_i+1})") do
    click_link "Destroy"
  end
end

Then /^I should see the following songs:$/ do |expected_songs_table|
  expected_songs_table.diff!(table_at('table').to_a)
end
