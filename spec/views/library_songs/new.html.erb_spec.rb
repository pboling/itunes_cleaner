require 'spec_helper'

describe "/library_songs/new.html.erb" do
  include LibrarySongsHelper

  before(:each) do
    assigns[:library_song] = stub_model(LibrarySong,
      :new_record? => true,
      :song_id => 1,
      :library_id => 1
    )
  end

  it "renders new library_song form" do
    render

    response.should have_tag("form[action=?][method=post]", library_songs_path) do
      with_tag("input#library_song_song_id[name=?]", "library_song[song_id]")
      with_tag("input#library_song_library_id[name=?]", "library_song[library_id]")
    end
  end
end
