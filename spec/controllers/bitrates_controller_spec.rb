require 'spec_helper'

describe BitratesController do

  def mock_bitrate(stubs={})
    @mock_bitrate ||= mock_model(Bitrate, stubs)
  end

  describe "GET index" do
    it "assigns all bitrates as @bitrates" do
      Bitrate.stub(:find).with(:all).and_return([mock_bitrate])
      get :index
      assigns[:bitrates].should == [mock_bitrate]
    end
  end

  describe "GET show" do
    it "assigns the requested bitrate as @bitrate" do
      Bitrate.stub(:find).with("37").and_return(mock_bitrate)
      get :show, :id => "37"
      assigns[:bitrate].should equal(mock_bitrate)
    end
  end

  describe "GET new" do
    it "assigns a new bitrate as @bitrate" do
      Bitrate.stub(:new).and_return(mock_bitrate)
      get :new
      assigns[:bitrate].should equal(mock_bitrate)
    end
  end

  describe "GET edit" do
    it "assigns the requested bitrate as @bitrate" do
      Bitrate.stub(:find).with("37").and_return(mock_bitrate)
      get :edit, :id => "37"
      assigns[:bitrate].should equal(mock_bitrate)
    end
  end

  describe "POST create" do

    describe "with valid params" do
      it "assigns a newly created bitrate as @bitrate" do
        Bitrate.stub(:new).with({'these' => 'params'}).and_return(mock_bitrate(:save => true))
        post :create, :bitrate => {:these => 'params'}
        assigns[:bitrate].should equal(mock_bitrate)
      end

      it "redirects to the created bitrate" do
        Bitrate.stub(:new).and_return(mock_bitrate(:save => true))
        post :create, :bitrate => {}
        response.should redirect_to(bitrate_url(mock_bitrate))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved bitrate as @bitrate" do
        Bitrate.stub(:new).with({'these' => 'params'}).and_return(mock_bitrate(:save => false))
        post :create, :bitrate => {:these => 'params'}
        assigns[:bitrate].should equal(mock_bitrate)
      end

      it "re-renders the 'new' template" do
        Bitrate.stub(:new).and_return(mock_bitrate(:save => false))
        post :create, :bitrate => {}
        response.should render_template('new')
      end
    end

  end

  describe "PUT update" do

    describe "with valid params" do
      it "updates the requested bitrate" do
        Bitrate.should_receive(:find).with("37").and_return(mock_bitrate)
        mock_bitrate.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :bitrate => {:these => 'params'}
      end

      it "assigns the requested bitrate as @bitrate" do
        Bitrate.stub(:find).and_return(mock_bitrate(:update_attributes => true))
        put :update, :id => "1"
        assigns[:bitrate].should equal(mock_bitrate)
      end

      it "redirects to the bitrate" do
        Bitrate.stub(:find).and_return(mock_bitrate(:update_attributes => true))
        put :update, :id => "1"
        response.should redirect_to(bitrate_url(mock_bitrate))
      end
    end

    describe "with invalid params" do
      it "updates the requested bitrate" do
        Bitrate.should_receive(:find).with("37").and_return(mock_bitrate)
        mock_bitrate.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :bitrate => {:these => 'params'}
      end

      it "assigns the bitrate as @bitrate" do
        Bitrate.stub(:find).and_return(mock_bitrate(:update_attributes => false))
        put :update, :id => "1"
        assigns[:bitrate].should equal(mock_bitrate)
      end

      it "re-renders the 'edit' template" do
        Bitrate.stub(:find).and_return(mock_bitrate(:update_attributes => false))
        put :update, :id => "1"
        response.should render_template('edit')
      end
    end

  end

  describe "DELETE destroy" do
    it "destroys the requested bitrate" do
      Bitrate.should_receive(:find).with("37").and_return(mock_bitrate)
      mock_bitrate.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the bitrates list" do
      Bitrate.stub(:find).and_return(mock_bitrate(:destroy => true))
      delete :destroy, :id => "1"
      response.should redirect_to(bitrates_url)
    end
  end

end
