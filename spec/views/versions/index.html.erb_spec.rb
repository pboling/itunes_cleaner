require 'spec_helper'

describe "/versions/index.html.erb" do
  include VersionsHelper

  before(:each) do
    assigns[:versions] = [
      stub_model(Version,
        :song_id => 1,
        :encoding_id => 1,
        :bitrate_id => 1
      ),
      stub_model(Version,
        :song_id => 1,
        :encoding_id => 1,
        :bitrate_id => 1
      )
    ]
  end

  it "renders a list of versions" do
    render
    response.should have_tag("tr>td", 1.to_s, 2)
    response.should have_tag("tr>td", 1.to_s, 2)
    response.should have_tag("tr>td", 1.to_s, 2)
  end
end
