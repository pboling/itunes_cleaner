require 'spec_helper'

describe VersionsController do
  describe "routing" do
    it "recognizes and generates #index" do
      { :get => "/versions" }.should route_to(:controller => "versions", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/versions/new" }.should route_to(:controller => "versions", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/versions/1" }.should route_to(:controller => "versions", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/versions/1/edit" }.should route_to(:controller => "versions", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/versions" }.should route_to(:controller => "versions", :action => "create") 
    end

    it "recognizes and generates #update" do
      { :put => "/versions/1" }.should route_to(:controller => "versions", :action => "update", :id => "1") 
    end

    it "recognizes and generates #destroy" do
      { :delete => "/versions/1" }.should route_to(:controller => "versions", :action => "destroy", :id => "1") 
    end
  end
end
