require 'spec_helper'

describe BitratesController do
  describe "routing" do
    it "recognizes and generates #index" do
      { :get => "/bitrates" }.should route_to(:controller => "bitrates", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/bitrates/new" }.should route_to(:controller => "bitrates", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/bitrates/1" }.should route_to(:controller => "bitrates", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/bitrates/1/edit" }.should route_to(:controller => "bitrates", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/bitrates" }.should route_to(:controller => "bitrates", :action => "create") 
    end

    it "recognizes and generates #update" do
      { :put => "/bitrates/1" }.should route_to(:controller => "bitrates", :action => "update", :id => "1") 
    end

    it "recognizes and generates #destroy" do
      { :delete => "/bitrates/1" }.should route_to(:controller => "bitrates", :action => "destroy", :id => "1") 
    end
  end
end
