require 'spec_helper'

describe EncodingsController do
  describe "routing" do
    it "recognizes and generates #index" do
      { :get => "/encodings" }.should route_to(:controller => "encodings", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/encodings/new" }.should route_to(:controller => "encodings", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/encodings/1" }.should route_to(:controller => "encodings", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/encodings/1/edit" }.should route_to(:controller => "encodings", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/encodings" }.should route_to(:controller => "encodings", :action => "create") 
    end

    it "recognizes and generates #update" do
      { :put => "/encodings/1" }.should route_to(:controller => "encodings", :action => "update", :id => "1") 
    end

    it "recognizes and generates #destroy" do
      { :delete => "/encodings/1" }.should route_to(:controller => "encodings", :action => "destroy", :id => "1") 
    end
  end
end
