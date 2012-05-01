class FarmaciaController < ApplicationController
  # GET /farmacia
  # GET /farmacia.json
  def index
    @farmacia = Farmacium.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @farmacia }
    end
  end

  # GET /farmacia/1
  # GET /farmacia/1.json
  def show
    @farmacium = Farmacium.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @farmacium }
    end
  end

  # GET /farmacia/new
  # GET /farmacia/new.json
  def new
    @farmacium = Farmacium.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @farmacium }
    end
  end

  # GET /farmacia/1/edit
  def edit
    @farmacium = Farmacium.find(params[:id])
  end

  # POST /farmacia
  # POST /farmacia.json
  def create
    @farmacium = Farmacium.new(params[:farmacium])

    respond_to do |format|
      if @farmacium.save
        format.html { redirect_to @farmacium, notice: 'Farmacium was successfully created.' }
        format.json { render json: @farmacium, status: :created, location: @farmacium }
      else
        format.html { render action: "new" }
        format.json { render json: @farmacium.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /farmacia/1
  # PUT /farmacia/1.json
  def update
    @farmacium = Farmacium.find(params[:id])

    respond_to do |format|
      if @farmacium.update_attributes(params[:farmacium])
        format.html { redirect_to @farmacium, notice: 'Farmacium was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @farmacium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /farmacia/1
  # DELETE /farmacia/1.json
  def destroy
    @farmacium = Farmacium.find(params[:id])
    @farmacium.destroy

    respond_to do |format|
      format.html { redirect_to farmacia_url }
      format.json { head :no_content }
    end
  end
end
