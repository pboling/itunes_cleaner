require 'spec_helper'

describe "/encodings/index.html.erb" do
  include EncodingsHelper

  before(:each) do
    assigns[:encodings] = [
      stub_model(Encoding,
        :name => "value for name",
        :code => "value for code"
      ),
      stub_model(Encoding,
        :name => "value for name",
        :code => "value for code"
      )
    ]
  end

  it "renders a list of encodings" do
    render
    response.should have_tag("tr>td", "value for name".to_s, 2)
    response.should have_tag("tr>td", "value for code".to_s, 2)
  end
end
