require 'spec_helper'

describe LibrariesController do

  def mock_library(stubs={})
    @mock_library ||= mock_model(Library, stubs)
  end

  describe "GET index" do
    it "assigns all libraries as @libraries" do
      Library.stub(:find).with(:all).and_return([mock_library])
      get :index
      assigns[:libraries].should == [mock_library]
    end
  end

  describe "GET show" do
    it "assigns the requested library as @library" do
      Library.stub(:find).with("37").and_return(mock_library)
      get :show, :id => "37"
      assigns[:library].should equal(mock_library)
    end
  end

  describe "GET new" do
    it "assigns a new library as @library" do
      Library.stub(:new).and_return(mock_library)
      get :new
      assigns[:library].should equal(mock_library)
    end
  end

  describe "GET edit" do
    it "assigns the requested library as @library" do
      Library.stub(:find).with("37").and_return(mock_library)
      get :edit, :id => "37"
      assigns[:library].should equal(mock_library)
    end
  end

  describe "POST create" do

    describe "with valid params" do
      it "assigns a newly created library as @library" do
        Library.stub(:new).with({'these' => 'params'}).and_return(mock_library(:save => true))
        post :create, :library => {:these => 'params'}
        assigns[:library].should equal(mock_library)
      end

      it "redirects to the created library" do
        Library.stub(:new).and_return(mock_library(:save => true))
        post :create, :library => {}
        response.should redirect_to(library_url(mock_library))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved library as @library" do
        Library.stub(:new).with({'these' => 'params'}).and_return(mock_library(:save => false))
        post :create, :library => {:these => 'params'}
        assigns[:library].should equal(mock_library)
      end

      it "re-renders the 'new' template" do
        Library.stub(:new).and_return(mock_library(:save => false))
        post :create, :library => {}
        response.should render_template('new')
      end
    end

  end

  describe "PUT update" do

    describe "with valid params" do
      it "updates the requested library" do
        Library.should_receive(:find).with("37").and_return(mock_library)
        mock_library.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :library => {:these => 'params'}
      end

      it "assigns the requested library as @library" do
        Library.stub(:find).and_return(mock_library(:update_attributes => true))
        put :update, :id => "1"
        assigns[:library].should equal(mock_library)
      end

      it "redirects to the library" do
        Library.stub(:find).and_return(mock_library(:update_attributes => true))
        put :update, :id => "1"
        response.should redirect_to(library_url(mock_library))
      end
    end

    describe "with invalid params" do
      it "updates the requested library" do
        Library.should_receive(:find).with("37").and_return(mock_library)
        mock_library.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :library => {:these => 'params'}
      end

      it "assigns the library as @library" do
        Library.stub(:find).and_return(mock_library(:update_attributes => false))
        put :update, :id => "1"
        assigns[:library].should equal(mock_library)
      end

      it "re-renders the 'edit' template" do
        Library.stub(:find).and_return(mock_library(:update_attributes => false))
        put :update, :id => "1"
        response.should render_template('edit')
      end
    end

  end

  describe "DELETE destroy" do
    it "destroys the requested library" do
      Library.should_receive(:find).with("37").and_return(mock_library)
      mock_library.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the libraries list" do
      Library.stub(:find).and_return(mock_library(:destroy => true))
      delete :destroy, :id => "1"
      response.should redirect_to(libraries_url)
    end
  end

end
