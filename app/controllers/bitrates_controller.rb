class BitratesController < ApplicationController
  # GET /bitrates
  # GET /bitrates.xml
  def index
    @bitrates = Bitrate.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @bitrates }
    end
  end

  # GET /bitrates/1
  # GET /bitrates/1.xml
  def show
    @bitrate = Bitrate.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @bitrate }
    end
  end

  # GET /bitrates/new
  # GET /bitrates/new.xml
  def new
    @bitrate = Bitrate.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @bitrate }
    end
  end

  # GET /bitrates/1/edit
  def edit
    @bitrate = Bitrate.find(params[:id])
  end

  # POST /bitrates
  # POST /bitrates.xml
  def create
    @bitrate = Bitrate.new(params[:bitrate])

    respond_to do |format|
      if @bitrate.save
        flash[:notice] = 'Bitrate was successfully created.'
        format.html { redirect_to(@bitrate) }
        format.xml  { render :xml => @bitrate, :status => :created, :location => @bitrate }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @bitrate.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /bitrates/1
  # PUT /bitrates/1.xml
  def update
    @bitrate = Bitrate.find(params[:id])

    respond_to do |format|
      if @bitrate.update_attributes(params[:bitrate])
        flash[:notice] = 'Bitrate was successfully updated.'
        format.html { redirect_to(@bitrate) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @bitrate.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /bitrates/1
  # DELETE /bitrates/1.xml
  def destroy
    @bitrate = Bitrate.find(params[:id])
    @bitrate.destroy

    respond_to do |format|
      format.html { redirect_to(bitrates_url) }
      format.xml  { head :ok }
    end
  end
end
