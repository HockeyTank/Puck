class RinkLeaguesController < ApplicationController
  # GET /rink_leagues
  # GET /rink_leagues.json
  def index
    @rink_leagues = RinkLeague.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @rink_leagues }
    end
  end

  # GET /rink_leagues/1
  # GET /rink_leagues/1.json
  def show
    @rink_league = RinkLeague.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @rink_league }
    end
  end

  # GET /rink_leagues/new
  # GET /rink_leagues/new.json
  def new
    @rink_league = RinkLeague.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @rink_league }
    end
  end

  # GET /rink_leagues/1/edit
  def edit
    @rink_league = RinkLeague.find(params[:id])
  end

  # POST /rink_leagues
  # POST /rink_leagues.json
  def create
    @rink_league = RinkLeague.new(params[:rink_league])

    respond_to do |format|
      if @rink_league.save
        format.html { redirect_to @rink_league, notice: 'Rink league was successfully created.' }
        format.json { render json: @rink_league, status: :created, location: @rink_league }
      else
        format.html { render action: "new" }
        format.json { render json: @rink_league.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /rink_leagues/1
  # PUT /rink_leagues/1.json
  def update
    @rink_league = RinkLeague.find(params[:id])

    respond_to do |format|
      if @rink_league.update_attributes(params[:rink_league])
        format.html { redirect_to @rink_league, notice: 'Rink league was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @rink_league.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rink_leagues/1
  # DELETE /rink_leagues/1.json
  def destroy
    @rink_league = RinkLeague.find(params[:id])
    @rink_league.destroy

    respond_to do |format|
      format.html { redirect_to rink_leagues_url }
      format.json { head :no_content }
    end
  end
end
