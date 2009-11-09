require 'spec_helper'

describe "/bitrates/index.html.erb" do
  include BitratesHelper

  before(:each) do
    assigns[:bitrates] = [
      stub_model(Bitrate,
        :name => "value for name",
        :code => 1
      ),
      stub_model(Bitrate,
        :name => "value for name",
        :code => 1
      )
    ]
  end

  it "renders a list of bitrates" do
    render
    response.should have_tag("tr>td", "value for name".to_s, 2)
    response.should have_tag("tr>td", 1.to_s, 2)
  end
end
