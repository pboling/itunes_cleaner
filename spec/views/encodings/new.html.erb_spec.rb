require 'spec_helper'

describe "/encodings/new.html.erb" do
  include EncodingsHelper

  before(:each) do
    assigns[:encoding] = stub_model(Encoding,
      :new_record? => true,
      :name => "value for name",
      :code => "value for code"
    )
  end

  it "renders new encoding form" do
    render

    response.should have_tag("form[action=?][method=post]", encodings_path) do
      with_tag("input#encoding_name[name=?]", "encoding[name]")
      with_tag("input#encoding_code[name=?]", "encoding[code]")
    end
  end
end
