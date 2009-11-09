Given /^the following versions:$/ do |versions|
  Version.create!(versions.hashes)
end

When /^I delete the (\d+)(?:st|nd|rd|th) version$/ do |pos|
  visit versions_url
  within("table > tr:nth-child(#{pos.to_i+1})") do
    click_link "Destroy"
  end
end

Then /^I should see the following versions:$/ do |expected_versions_table|
  expected_versions_table.diff!(table_at('table').to_a)
end
