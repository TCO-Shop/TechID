class TechesController < ApplicationController
  # GET /teches
  # GET /teches.json
  def index
    @teches = Tech.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @teches }
    end
  end

  # GET /teches/1
  # GET /teches/1.json
  def show
    @tech = Tech.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @tech }
    end
  end

  # GET /teches/new
  # GET /teches/new.json
  def new
    @tech = Tech.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @tech }
    end
  end

  # GET /teches/1/edit
  def edit
    @tech = Tech.find(params[:id])
  end

  # POST /teches
  # POST /teches.json
  def create
    @tech = Tech.new(params[:tech])

    respond_to do |format|
      if @tech.save
        format.html { redirect_to @tech, notice: 'Tech was successfully created.' }
        format.json { render json: @tech, status: :created, location: @tech }
      else
        format.html { render action: "new" }
        format.json { render json: @tech.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /teches/1
  # PUT /teches/1.json
  def update
    @tech = Tech.find(params[:id])

    respond_to do |format|
      if @tech.update_attributes(params[:tech])
        format.html { redirect_to @tech, notice: 'Tech was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @tech.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /teches/1
  # DELETE /teches/1.json
  def destroy
    @tech = Tech.find(params[:id])
    @tech.destroy

    respond_to do |format|
      format.html { redirect_to teches_url }
      format.json { head :no_content }
    end
  end
end
