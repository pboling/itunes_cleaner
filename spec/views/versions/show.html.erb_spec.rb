require 'spec_helper'

describe "/versions/show.html.erb" do
  include VersionsHelper
  before(:each) do
    assigns[:version] = @version = stub_model(Version,
      :song_id => 1,
      :encoding_id => 1,
      :bitrate_id => 1
    )
  end

  it "renders attributes in <p>" do
    render
    response.should have_text(/1/)
    response.should have_text(/1/)
    response.should have_text(/1/)
  end
end
