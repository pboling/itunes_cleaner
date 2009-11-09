require 'spec_helper'

describe "/encodings/edit.html.erb" do
  include EncodingsHelper

  before(:each) do
    assigns[:encoding] = @encoding = stub_model(Encoding,
      :new_record? => false,
      :name => "value for name",
      :code => "value for code"
    )
  end

  it "renders the edit encoding form" do
    render

    response.should have_tag("form[action=#{encoding_path(@encoding)}][method=post]") do
      with_tag('input#encoding_name[name=?]', "encoding[name]")
      with_tag('input#encoding_code[name=?]', "encoding[code]")
    end
  end
end
