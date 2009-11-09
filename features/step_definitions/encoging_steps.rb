Given /^the following encogings:$/ do |encogings|
  Encoging.create!(encogings.hashes)
end

When /^I delete the (\d+)(?:st|nd|rd|th) encoging$/ do |pos|
  visit encogings_url
  within("table > tr:nth-child(#{pos.to_i+1})") do
    click_link "Destroy"
  end
end

Then /^I should see the following encogings:$/ do |expected_encogings_table|
  expected_encogings_table.diff!(table_at('table').to_a)
end
