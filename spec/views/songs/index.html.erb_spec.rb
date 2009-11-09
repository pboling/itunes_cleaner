require 'spec_helper'

describe "/songs/index.html.erb" do
  include SongsHelper

  before(:each) do
    assigns[:songs] = [
      stub_model(Song,
        :name => "value for name",
        :album => "value for album",
        :artist => "value for artist",
        :length => 1
      ),
      stub_model(Song,
        :name => "value for name",
        :album => "value for album",
        :artist => "value for artist",
        :length => 1
      )
    ]
  end

  it "renders a list of songs" do
    render
    response.should have_tag("tr>td", "value for name".to_s, 2)
    response.should have_tag("tr>td", "value for album".to_s, 2)
    response.should have_tag("tr>td", "value for artist".to_s, 2)
    response.should have_tag("tr>td", 1.to_s, 2)
  end
end
