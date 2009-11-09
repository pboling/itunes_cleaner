require 'spec_helper'

describe EncodingsController do

  def mock_encoding(stubs={})
    @mock_encoding ||= mock_model(Encoding, stubs)
  end

  describe "GET index" do
    it "assigns all encodings as @encodings" do
      Encoding.stub(:find).with(:all).and_return([mock_encoding])
      get :index
      assigns[:encodings].should == [mock_encoding]
    end
  end

  describe "GET show" do
    it "assigns the requested encoding as @encoding" do
      Encoding.stub(:find).with("37").and_return(mock_encoding)
      get :show, :id => "37"
      assigns[:encoding].should equal(mock_encoding)
    end
  end

  describe "GET new" do
    it "assigns a new encoding as @encoding" do
      Encoding.stub(:new).and_return(mock_encoding)
      get :new
      assigns[:encoding].should equal(mock_encoding)
    end
  end

  describe "GET edit" do
    it "assigns the requested encoding as @encoding" do
      Encoding.stub(:find).with("37").and_return(mock_encoding)
      get :edit, :id => "37"
      assigns[:encoding].should equal(mock_encoding)
    end
  end

  describe "POST create" do

    describe "with valid params" do
      it "assigns a newly created encoding as @encoding" do
        Encoding.stub(:new).with({'these' => 'params'}).and_return(mock_encoding(:save => true))
        post :create, :encoding => {:these => 'params'}
        assigns[:encoding].should equal(mock_encoding)
      end

      it "redirects to the created encoding" do
        Encoding.stub(:new).and_return(mock_encoding(:save => true))
        post :create, :encoding => {}
        response.should redirect_to(encoding_url(mock_encoding))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved encoding as @encoding" do
        Encoding.stub(:new).with({'these' => 'params'}).and_return(mock_encoding(:save => false))
        post :create, :encoding => {:these => 'params'}
        assigns[:encoding].should equal(mock_encoding)
      end

      it "re-renders the 'new' template" do
        Encoding.stub(:new).and_return(mock_encoding(:save => false))
        post :create, :encoding => {}
        response.should render_template('new')
      end
    end

  end

  describe "PUT update" do

    describe "with valid params" do
      it "updates the requested encoding" do
        Encoding.should_receive(:find).with("37").and_return(mock_encoding)
        mock_encoding.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :encoding => {:these => 'params'}
      end

      it "assigns the requested encoding as @encoding" do
        Encoding.stub(:find).and_return(mock_encoding(:update_attributes => true))
        put :update, :id => "1"
        assigns[:encoding].should equal(mock_encoding)
      end

      it "redirects to the encoding" do
        Encoding.stub(:find).and_return(mock_encoding(:update_attributes => true))
        put :update, :id => "1"
        response.should redirect_to(encoding_url(mock_encoding))
      end
    end

    describe "with invalid params" do
      it "updates the requested encoding" do
        Encoding.should_receive(:find).with("37").and_return(mock_encoding)
        mock_encoding.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :encoding => {:these => 'params'}
      end

      it "assigns the encoding as @encoding" do
        Encoding.stub(:find).and_return(mock_encoding(:update_attributes => false))
        put :update, :id => "1"
        assigns[:encoding].should equal(mock_encoding)
      end

      it "re-renders the 'edit' template" do
        Encoding.stub(:find).and_return(mock_encoding(:update_attributes => false))
        put :update, :id => "1"
        response.should render_template('edit')
      end
    end

  end

  describe "DELETE destroy" do
    it "destroys the requested encoding" do
      Encoding.should_receive(:find).with("37").and_return(mock_encoding)
      mock_encoding.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the encodings list" do
      Encoding.stub(:find).and_return(mock_encoding(:destroy => true))
      delete :destroy, :id => "1"
      response.should redirect_to(encodings_url)
    end
  end

end
