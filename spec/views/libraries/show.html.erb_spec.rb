require 'spec_helper'

describe "/libraries/show.html.erb" do
  include LibrariesHelper
  before(:each) do
    assigns[:library] = @library = stub_model(Library,
      :name => "value for name",
      :location => "value for location"
    )
  end

  it "renders attributes in <p>" do
    render
    response.should have_text(/value\ for\ name/)
    response.should have_text(/value\ for\ location/)
  end
end
