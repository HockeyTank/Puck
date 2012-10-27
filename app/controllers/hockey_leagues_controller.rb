class HockeyLeaguesController < ApplicationController
  # GET /hockey_leagues
  # GET /hockey_leagues.json
  def index
    @hockey_leagues = HockeyLeague.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @hockey_leagues }
    end
  end

  # GET /hockey_leagues/1
  # GET /hockey_leagues/1.json
  def show
    @hockey_league = HockeyLeague.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @hockey_league }
    end
  end

  # GET /hockey_leagues/new
  # GET /hockey_leagues/new.json
  def new
    @hockey_league = HockeyLeague.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @hockey_league }
    end
  end

  # GET /hockey_leagues/1/edit
  def edit
    @hockey_league = HockeyLeague.find(params[:id])
  end

  # POST /hockey_leagues
  # POST /hockey_leagues.json
  def create
    @hockey_league = HockeyLeague.new(params[:hockey_league])

    respond_to do |format|
      if @hockey_league.save
        format.html { redirect_to @hockey_league, notice: 'Hockey league was successfully created.' }
        format.json { render json: @hockey_league, status: :created, location: @hockey_league }
      else
        format.html { render action: "new" }
        format.json { render json: @hockey_league.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /hockey_leagues/1
  # PUT /hockey_leagues/1.json
  def update
    @hockey_league = HockeyLeague.find(params[:id])

    respond_to do |format|
      if @hockey_league.update_attributes(params[:hockey_league])
        format.html { redirect_to @hockey_league, notice: 'Hockey league was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @hockey_league.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hockey_leagues/1
  # DELETE /hockey_leagues/1.json
  def destroy
    @hockey_league = HockeyLeague.find(params[:id])
    @hockey_league.destroy

    respond_to do |format|
      format.html { redirect_to hockey_leagues_url }
      format.json { head :no_content }
    end
  end
end
