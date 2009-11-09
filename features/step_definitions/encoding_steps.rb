Given /^the following encodings:$/ do |encodings|
  Encoding.create!(encodings.hashes)
end

When /^I delete the (\d+)(?:st|nd|rd|th) encoding$/ do |pos|
  visit encodings_url
  within("table > tr:nth-child(#{pos.to_i+1})") do
    click_link "Destroy"
  end
end

Then /^I should see the following encodings:$/ do |expected_encodings_table|
  expected_encodings_table.diff!(table_at('table').to_a)
end
