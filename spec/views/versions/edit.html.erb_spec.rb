require 'spec_helper'

describe "/versions/edit.html.erb" do
  include VersionsHelper

  before(:each) do
    assigns[:version] = @version = stub_model(Version,
      :new_record? => false,
      :song_id => 1,
      :encoding_id => 1,
      :bitrate_id => 1
    )
  end

  it "renders the edit version form" do
    render

    response.should have_tag("form[action=#{version_path(@version)}][method=post]") do
      with_tag('input#version_song_id[name=?]', "version[song_id]")
      with_tag('input#version_encoding_id[name=?]', "version[encoding_id]")
      with_tag('input#version_bitrate_id[name=?]', "version[bitrate_id]")
    end
  end
end
