require 'spec_helper'

describe LibrarySongsController do

  def mock_library_song(stubs={})
    @mock_library_song ||= mock_model(LibrarySong, stubs)
  end

  describe "GET index" do
    it "assigns all library_songs as @library_songs" do
      LibrarySong.stub(:find).with(:all).and_return([mock_library_song])
      get :index
      assigns[:library_songs].should == [mock_library_song]
    end
  end

  describe "GET show" do
    it "assigns the requested library_song as @library_song" do
      LibrarySong.stub(:find).with("37").and_return(mock_library_song)
      get :show, :id => "37"
      assigns[:library_song].should equal(mock_library_song)
    end
  end

  describe "GET new" do
    it "assigns a new library_song as @library_song" do
      LibrarySong.stub(:new).and_return(mock_library_song)
      get :new
      assigns[:library_song].should equal(mock_library_song)
    end
  end

  describe "GET edit" do
    it "assigns the requested library_song as @library_song" do
      LibrarySong.stub(:find).with("37").and_return(mock_library_song)
      get :edit, :id => "37"
      assigns[:library_song].should equal(mock_library_song)
    end
  end

  describe "POST create" do

    describe "with valid params" do
      it "assigns a newly created library_song as @library_song" do
        LibrarySong.stub(:new).with({'these' => 'params'}).and_return(mock_library_song(:save => true))
        post :create, :library_song => {:these => 'params'}
        assigns[:library_song].should equal(mock_library_song)
      end

      it "redirects to the created library_song" do
        LibrarySong.stub(:new).and_return(mock_library_song(:save => true))
        post :create, :library_song => {}
        response.should redirect_to(library_song_url(mock_library_song))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved library_song as @library_song" do
        LibrarySong.stub(:new).with({'these' => 'params'}).and_return(mock_library_song(:save => false))
        post :create, :library_song => {:these => 'params'}
        assigns[:library_song].should equal(mock_library_song)
      end

      it "re-renders the 'new' template" do
        LibrarySong.stub(:new).and_return(mock_library_song(:save => false))
        post :create, :library_song => {}
        response.should render_template('new')
      end
    end

  end

  describe "PUT update" do

    describe "with valid params" do
      it "updates the requested library_song" do
        LibrarySong.should_receive(:find).with("37").and_return(mock_library_song)
        mock_library_song.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :library_song => {:these => 'params'}
      end

      it "assigns the requested library_song as @library_song" do
        LibrarySong.stub(:find).and_return(mock_library_song(:update_attributes => true))
        put :update, :id => "1"
        assigns[:library_song].should equal(mock_library_song)
      end

      it "redirects to the library_song" do
        LibrarySong.stub(:find).and_return(mock_library_song(:update_attributes => true))
        put :update, :id => "1"
        response.should redirect_to(library_song_url(mock_library_song))
      end
    end

    describe "with invalid params" do
      it "updates the requested library_song" do
        LibrarySong.should_receive(:find).with("37").and_return(mock_library_song)
        mock_library_song.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :library_song => {:these => 'params'}
      end

      it "assigns the library_song as @library_song" do
        LibrarySong.stub(:find).and_return(mock_library_song(:update_attributes => false))
        put :update, :id => "1"
        assigns[:library_song].should equal(mock_library_song)
      end

      it "re-renders the 'edit' template" do
        LibrarySong.stub(:find).and_return(mock_library_song(:update_attributes => false))
        put :update, :id => "1"
        response.should render_template('edit')
      end
    end

  end

  describe "DELETE destroy" do
    it "destroys the requested library_song" do
      LibrarySong.should_receive(:find).with("37").and_return(mock_library_song)
      mock_library_song.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the library_songs list" do
      LibrarySong.stub(:find).and_return(mock_library_song(:destroy => true))
      delete :destroy, :id => "1"
      response.should redirect_to(library_songs_url)
    end
  end

end
