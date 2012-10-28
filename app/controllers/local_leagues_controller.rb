class LocalLeaguesController < ApplicationController
  # GET /local_leagues
  # GET /local_leagues.json
  def index
    @local_leagues = LocalLeague.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @local_leagues }
    end
  end

  # GET /local_leagues/1
  # GET /local_leagues/1.json
  def show
    @local_league = LocalLeague.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @local_league }
    end
  end

  # GET /local_leagues/new
  # GET /local_leagues/new.json
  def new
    @local_league = LocalLeague.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @local_league }
    end
  end

  # GET /local_leagues/1/edit
  def edit
    @local_league = LocalLeague.find(params[:id])
  end

  # POST /local_leagues
  # POST /local_leagues.json
  def create
    @local_league = LocalLeague.new(params[:local_league])

    respond_to do |format|
      if @local_league.save
        format.html { redirect_to @local_league, notice: 'Local league was successfully created.' }
        format.json { render json: @local_league, status: :created, location: @local_league }
      else
        format.html { render action: "new" }
        format.json { render json: @local_league.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /local_leagues/1
  # PUT /local_leagues/1.json
  def update
    @local_league = LocalLeague.find(params[:id])

    respond_to do |format|
      if @local_league.update_attributes(params[:local_league])
        format.html { redirect_to @local_league, notice: 'Local league was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @local_league.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /local_leagues/1
  # DELETE /local_leagues/1.json
  def destroy
    @local_league = LocalLeague.find(params[:id])
    @local_league.destroy

    respond_to do |format|
      format.html { redirect_to local_leagues_url }
      format.json { head :no_content }
    end
  end
end
