require 'spec_helper'

describe "/bitrates/show.html.erb" do
  include BitratesHelper
  before(:each) do
    assigns[:bitrate] = @bitrate = stub_model(Bitrate,
      :name => "value for name",
      :code => 1
    )
  end

  it "renders attributes in <p>" do
    render
    response.should have_text(/value\ for\ name/)
    response.should have_text(/1/)
  end
end
