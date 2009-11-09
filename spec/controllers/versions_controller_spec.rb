require 'spec_helper'

describe VersionsController do

  def mock_version(stubs={})
    @mock_version ||= mock_model(Version, stubs)
  end

  describe "GET index" do
    it "assigns all versions as @versions" do
      Version.stub(:find).with(:all).and_return([mock_version])
      get :index
      assigns[:versions].should == [mock_version]
    end
  end

  describe "GET show" do
    it "assigns the requested version as @version" do
      Version.stub(:find).with("37").and_return(mock_version)
      get :show, :id => "37"
      assigns[:version].should equal(mock_version)
    end
  end

  describe "GET new" do
    it "assigns a new version as @version" do
      Version.stub(:new).and_return(mock_version)
      get :new
      assigns[:version].should equal(mock_version)
    end
  end

  describe "GET edit" do
    it "assigns the requested version as @version" do
      Version.stub(:find).with("37").and_return(mock_version)
      get :edit, :id => "37"
      assigns[:version].should equal(mock_version)
    end
  end

  describe "POST create" do

    describe "with valid params" do
      it "assigns a newly created version as @version" do
        Version.stub(:new).with({'these' => 'params'}).and_return(mock_version(:save => true))
        post :create, :version => {:these => 'params'}
        assigns[:version].should equal(mock_version)
      end

      it "redirects to the created version" do
        Version.stub(:new).and_return(mock_version(:save => true))
        post :create, :version => {}
        response.should redirect_to(version_url(mock_version))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved version as @version" do
        Version.stub(:new).with({'these' => 'params'}).and_return(mock_version(:save => false))
        post :create, :version => {:these => 'params'}
        assigns[:version].should equal(mock_version)
      end

      it "re-renders the 'new' template" do
        Version.stub(:new).and_return(mock_version(:save => false))
        post :create, :version => {}
        response.should render_template('new')
      end
    end

  end

  describe "PUT update" do

    describe "with valid params" do
      it "updates the requested version" do
        Version.should_receive(:find).with("37").and_return(mock_version)
        mock_version.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :version => {:these => 'params'}
      end

      it "assigns the requested version as @version" do
        Version.stub(:find).and_return(mock_version(:update_attributes => true))
        put :update, :id => "1"
        assigns[:version].should equal(mock_version)
      end

      it "redirects to the version" do
        Version.stub(:find).and_return(mock_version(:update_attributes => true))
        put :update, :id => "1"
        response.should redirect_to(version_url(mock_version))
      end
    end

    describe "with invalid params" do
      it "updates the requested version" do
        Version.should_receive(:find).with("37").and_return(mock_version)
        mock_version.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :version => {:these => 'params'}
      end

      it "assigns the version as @version" do
        Version.stub(:find).and_return(mock_version(:update_attributes => false))
        put :update, :id => "1"
        assigns[:version].should equal(mock_version)
      end

      it "re-renders the 'edit' template" do
        Version.stub(:find).and_return(mock_version(:update_attributes => false))
        put :update, :id => "1"
        response.should render_template('edit')
      end
    end

  end

  describe "DELETE destroy" do
    it "destroys the requested version" do
      Version.should_receive(:find).with("37").and_return(mock_version)
      mock_version.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the versions list" do
      Version.stub(:find).and_return(mock_version(:destroy => true))
      delete :destroy, :id => "1"
      response.should redirect_to(versions_url)
    end
  end

end
