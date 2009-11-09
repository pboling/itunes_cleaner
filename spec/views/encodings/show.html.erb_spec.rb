require 'spec_helper'

describe "/encodings/show.html.erb" do
  include EncodingsHelper
  before(:each) do
    assigns[:encoding] = @encoding = stub_model(Encoding,
      :name => "value for name",
      :code => "value for code"
    )
  end

  it "renders attributes in <p>" do
    render
    response.should have_text(/value\ for\ name/)
    response.should have_text(/value\ for\ code/)
  end
end
