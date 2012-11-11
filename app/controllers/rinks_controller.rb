class RinksController < ApplicationController
  # GET /rinks
  # GET /rinks.json
  def index
    @rinks = Rink.all

    respond_to do |format|
      format.html # index.html.erb
      #format.json { render json: @rinks }
      #the following format statement uses a new class to extend the JSON return
      #for datatables JQuery plugin
      format.json {  render json: RinksDatatable.new(view_context)}
    end
  end

  # GET /rinks/1
  # GET /rinks/1.json
  def show
    @rink = Rink.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @rink }
    end
  end

  # GET /rinks/new
  # GET /rinks/new.json
  def new
    @rink = Rink.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @rink }
    end
  end

  # GET /rinks/1/edit
  def edit
    @rink = Rink.find(params[:id])
  end

  # POST /rinks
  # POST /rinks.json
  def create
    @rink = Rink.new(params[:rink])

    respond_to do |format|
      if @rink.save
        format.html { redirect_to @rink, notice: 'Rink was successfully created.' }
        format.json { render json: @rink, status: :created, location: @rink }
      else
        format.html { render action: "new" }
        format.json { render json: @rink.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /rinks/1
  # PUT /rinks/1.json
  def update
    @rink = Rink.find(params[:id])

    respond_to do |format|
      if @rink.update_attributes(params[:rink])
        format.html { redirect_to @rink, notice: 'Rink was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @rink.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rinks/1
  # DELETE /rinks/1.json
  def destroy
    @rink = Rink.find(params[:id])
    @rink.destroy

    respond_to do |format|
      format.html { redirect_to rinks_url }
      format.json { head :no_content }
    end
  end
end
