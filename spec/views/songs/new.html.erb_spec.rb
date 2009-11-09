require 'spec_helper'

describe "/songs/new.html.erb" do
  include SongsHelper

  before(:each) do
    assigns[:song] = stub_model(Song,
      :new_record? => true,
      :name => "value for name",
      :album => "value for album",
      :artist => "value for artist",
      :length => 1
    )
  end

  it "renders new song form" do
    render

    response.should have_tag("form[action=?][method=post]", songs_path) do
      with_tag("input#song_name[name=?]", "song[name]")
      with_tag("input#song_album[name=?]", "song[album]")
      with_tag("input#song_artist[name=?]", "song[artist]")
      with_tag("input#song_length[name=?]", "song[length]")
    end
  end
end
