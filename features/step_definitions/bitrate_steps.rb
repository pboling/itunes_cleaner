Given /^the following bitrates:$/ do |bitrates|
  Bitrate.create!(bitrates.hashes)
end

When /^I delete the (\d+)(?:st|nd|rd|th) bitrate$/ do |pos|
  visit bitrates_url
  within("table > tr:nth-child(#{pos.to_i+1})") do
    click_link "Destroy"
  end
end

Then /^I should see the following bitrates:$/ do |expected_bitrates_table|
  expected_bitrates_table.diff!(table_at('table').to_a)
end
