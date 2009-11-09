require 'spec_helper'

describe "/library_songs/index.html.erb" do
  include LibrarySongsHelper

  before(:each) do
    assigns[:library_songs] = [
      stub_model(LibrarySong,
        :song_id => 1,
        :library_id => 1
      ),
      stub_model(LibrarySong,
        :song_id => 1,
        :library_id => 1
      )
    ]
  end

  it "renders a list of library_songs" do
    render
    response.should have_tag("tr>td", 1.to_s, 2)
    response.should have_tag("tr>td", 1.to_s, 2)
  end
end
