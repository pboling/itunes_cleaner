Given /^the following libraries:$/ do |libraries|
  Library.create!(libraries.hashes)
end

When /^I delete the (\d+)(?:st|nd|rd|th) library$/ do |pos|
  visit libraries_url
  within("table > tr:nth-child(#{pos.to_i+1})") do
    click_link "Destroy"
  end
end

Then /^I should see the following libraries:$/ do |expected_libraries_table|
  expected_libraries_table.diff!(table_at('table').to_a)
end
