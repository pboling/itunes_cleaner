require 'spec_helper'

describe "/bitrates/edit.html.erb" do
  include BitratesHelper

  before(:each) do
    assigns[:bitrate] = @bitrate = stub_model(Bitrate,
      :new_record? => false,
      :name => "value for name",
      :code => 1
    )
  end

  it "renders the edit bitrate form" do
    render

    response.should have_tag("form[action=#{bitrate_path(@bitrate)}][method=post]") do
      with_tag('input#bitrate_name[name=?]', "bitrate[name]")
      with_tag('input#bitrate_code[name=?]', "bitrate[code]")
    end
  end
end
