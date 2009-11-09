require 'spec_helper'

describe "/bitrates/new.html.erb" do
  include BitratesHelper

  before(:each) do
    assigns[:bitrate] = stub_model(Bitrate,
      :new_record? => true,
      :name => "value for name",
      :code => 1
    )
  end

  it "renders new bitrate form" do
    render

    response.should have_tag("form[action=?][method=post]", bitrates_path) do
      with_tag("input#bitrate_name[name=?]", "bitrate[name]")
      with_tag("input#bitrate_code[name=?]", "bitrate[code]")
    end
  end
end
