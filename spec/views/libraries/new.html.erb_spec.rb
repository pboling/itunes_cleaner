require 'spec_helper'

describe "/libraries/new.html.erb" do
  include LibrariesHelper

  before(:each) do
    assigns[:library] = stub_model(Library,
      :new_record? => true,
      :name => "value for name",
      :location => "value for location"
    )
  end

  it "renders new library form" do
    render

    response.should have_tag("form[action=?][method=post]", libraries_path) do
      with_tag("input#library_name[name=?]", "library[name]")
      with_tag("input#library_location[name=?]", "library[location]")
    end
  end
end
