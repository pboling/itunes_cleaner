require 'spec_helper'

describe "/libraries/index.html.erb" do
  include LibrariesHelper

  before(:each) do
    assigns[:libraries] = [
      stub_model(Library,
        :name => "value for name",
        :location => "value for location"
      ),
      stub_model(Library,
        :name => "value for name",
        :location => "value for location"
      )
    ]
  end

  it "renders a list of libraries" do
    render
    response.should have_tag("tr>td", "value for name".to_s, 2)
    response.should have_tag("tr>td", "value for location".to_s, 2)
  end
end
