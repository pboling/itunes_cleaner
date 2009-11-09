require 'spec_helper'

describe "/songs/show.html.erb" do
  include SongsHelper
  before(:each) do
    assigns[:song] = @song = stub_model(Song,
      :name => "value for name",
      :album => "value for album",
      :artist => "value for artist",
      :length => 1
    )
  end

  it "renders attributes in <p>" do
    render
    response.should have_text(/value\ for\ name/)
    response.should have_text(/value\ for\ album/)
    response.should have_text(/value\ for\ artist/)
    response.should have_text(/1/)
  end
end
