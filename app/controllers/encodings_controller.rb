class EncodingsController < ApplicationController
  # GET /encodings
  # GET /encodings.xml
  def index
    @encodings = Encoding.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @encodings }
    end
  end

  # GET /encodings/1
  # GET /encodings/1.xml
  def show
    @encoding = Encoding.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @encoding }
    end
  end

  # GET /encodings/new
  # GET /encodings/new.xml
  def new
    @encoding = Encoding.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @encoding }
    end
  end

  # GET /encodings/1/edit
  def edit
    @encoding = Encoding.find(params[:id])
  end

  # POST /encodings
  # POST /encodings.xml
  def create
    @encoding = Encoding.new(params[:encoding])

    respond_to do |format|
      if @encoding.save
        flash[:notice] = 'Encoding was successfully created.'
        format.html { redirect_to(@encoding) }
        format.xml  { render :xml => @encoding, :status => :created, :location => @encoding }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @encoding.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /encodings/1
  # PUT /encodings/1.xml
  def update
    @encoding = Encoding.find(params[:id])

    respond_to do |format|
      if @encoding.update_attributes(params[:encoding])
        flash[:notice] = 'Encoding was successfully updated.'
        format.html { redirect_to(@encoding) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @encoding.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /encodings/1
  # DELETE /encodings/1.xml
  def destroy
    @encoding = Encoding.find(params[:id])
    @encoding.destroy

    respond_to do |format|
      format.html { redirect_to(encodings_url) }
      format.xml  { head :ok }
    end
  end
end
