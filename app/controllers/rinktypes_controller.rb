class RinktypesController < ApplicationController
  # GET /rinktypes
  # GET /rinktypes.json
  def index
    @rinktypes = Rinktype.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @rinktypes }
    end
  end

  # GET /rinktypes/1
  # GET /rinktypes/1.json
  def show
    @rinktype = Rinktype.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @rinktype }
    end
  end

  # GET /rinktypes/new
  # GET /rinktypes/new.json
  def new
    @rinktype = Rinktype.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @rinktype }
    end
  end

  # GET /rinktypes/1/edit
  def edit
    @rinktype = Rinktype.find(params[:id])
  end

  # POST /rinktypes
  # POST /rinktypes.json
  def create
    @rinktype = Rinktype.new(params[:rinktype])

    respond_to do |format|
      if @rinktype.save
        format.html { redirect_to @rinktype, notice: 'Rinktype was successfully created.' }
        format.json { render json: @rinktype, status: :created, location: @rinktype }
      else
        format.html { render action: "new" }
        format.json { render json: @rinktype.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /rinktypes/1
  # PUT /rinktypes/1.json
  def update
    @rinktype = Rinktype.find(params[:id])

    respond_to do |format|
      if @rinktype.update_attributes(params[:rinktype])
        format.html { redirect_to @rinktype, notice: 'Rinktype was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @rinktype.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rinktypes/1
  # DELETE /rinktypes/1.json
  def destroy
    @rinktype = Rinktype.find(params[:id])
    @rinktype.destroy

    respond_to do |format|
      format.html { redirect_to rinktypes_url }
      format.json { head :no_content }
    end
  end
end
