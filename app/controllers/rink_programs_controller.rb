class RinkProgramsController < ApplicationController
  # GET /rink_programs
  # GET /rink_programs.json
  def index
    @rink_programs = RinkProgram.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @rink_programs }
    end
  end

  # GET /rink_programs/1
  # GET /rink_programs/1.json
  def show
    @rink_program = RinkProgram.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @rink_program }
    end
  end

  # GET /rink_programs/new
  # GET /rink_programs/new.json
  def new
    @rink_program = RinkProgram.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @rink_program }
    end
  end

  # GET /rink_programs/1/edit
  def edit
    @rink_program = RinkProgram.find(params[:id])
  end

  # POST /rink_programs
  # POST /rink_programs.json
  def create
    @rink_program = RinkProgram.new(params[:rink_program])

    respond_to do |format|
      if @rink_program.save
        format.html { redirect_to @rink_program, notice: 'Rink program was successfully created.' }
        format.json { render json: @rink_program, status: :created, location: @rink_program }
      else
        format.html { render action: "new" }
        format.json { render json: @rink_program.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /rink_programs/1
  # PUT /rink_programs/1.json
  def update
    @rink_program = RinkProgram.find(params[:id])

    respond_to do |format|
      if @rink_program.update_attributes(params[:rink_program])
        format.html { redirect_to @rink_program, notice: 'Rink program was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @rink_program.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rink_programs/1
  # DELETE /rink_programs/1.json
  def destroy
    @rink_program = RinkProgram.find(params[:id])
    @rink_program.destroy

    respond_to do |format|
      format.html { redirect_to rink_programs_url }
      format.json { head :no_content }
    end
  end
end
