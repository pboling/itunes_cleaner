require 'spec_helper'

describe LibrarySongsController do
  describe "routing" do
    it "recognizes and generates #index" do
      { :get => "/library_songs" }.should route_to(:controller => "library_songs", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/library_songs/new" }.should route_to(:controller => "library_songs", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/library_songs/1" }.should route_to(:controller => "library_songs", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/library_songs/1/edit" }.should route_to(:controller => "library_songs", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/library_songs" }.should route_to(:controller => "library_songs", :action => "create") 
    end

    it "recognizes and generates #update" do
      { :put => "/library_songs/1" }.should route_to(:controller => "library_songs", :action => "update", :id => "1") 
    end

    it "recognizes and generates #destroy" do
      { :delete => "/library_songs/1" }.should route_to(:controller => "library_songs", :action => "destroy", :id => "1") 
    end
  end
end
