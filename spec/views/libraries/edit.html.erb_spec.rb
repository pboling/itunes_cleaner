require 'spec_helper'

describe "/libraries/edit.html.erb" do
  include LibrariesHelper

  before(:each) do
    assigns[:library] = @library = stub_model(Library,
      :new_record? => false,
      :name => "value for name",
      :location => "value for location"
    )
  end

  it "renders the edit library form" do
    render

    response.should have_tag("form[action=#{library_path(@library)}][method=post]") do
      with_tag('input#library_name[name=?]', "library[name]")
      with_tag('input#library_location[name=?]', "library[location]")
    end
  end
end
