class TechIdsController < ApplicationController
  # GET /tech_ids
  # GET /tech_ids.json
  def index
    @tech_ids = TechId.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tech_ids }
    end
  end

  # GET /tech_ids/1
  # GET /tech_ids/1.json
  def show
    @tech_id = TechId.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @tech_id }
    end
  end

  # GET /tech_ids/new
  # GET /tech_ids/new.json
  def new
    @tech_id = TechId.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @tech_id }
    end
  end

  # GET /tech_ids/1/edit
  def edit
    @tech_id = TechId.find(params[:id])
  end

  # POST /tech_ids
  # POST /tech_ids.json
  def create
    @tech_id = TechId.new(params[:tech_id])

    respond_to do |format|
      if @tech_id.save
        format.html { redirect_to @tech_id, notice: 'Tech was successfully created.' }
        format.json { render json: @tech_id, status: :created, location: @tech_id }
      else
        format.html { render action: "new" }
        format.json { render json: @tech_id.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /tech_ids/1
  # PUT /tech_ids/1.json
  def update
    @tech_id = TechId.find(params[:id])

    respond_to do |format|
      if @tech_id.update_attributes(params[:tech_id])
        format.html { redirect_to @tech_id, notice: 'Tech was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @tech_id.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tech_ids/1
  # DELETE /tech_ids/1.json
  def destroy
    @tech_id = TechId.find(params[:id])
    @tech_id.destroy

    respond_to do |format|
      format.html { redirect_to tech_ids_url }
      format.json { head :no_content }
    end
  end
end
