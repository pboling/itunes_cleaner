require 'spec_helper'

describe "/library_songs/show.html.erb" do
  include LibrarySongsHelper
  before(:each) do
    assigns[:library_song] = @library_song = stub_model(LibrarySong,
      :song_id => 1,
      :library_id => 1
    )
  end

  it "renders attributes in <p>" do
    render
    response.should have_text(/1/)
    response.should have_text(/1/)
  end
end
