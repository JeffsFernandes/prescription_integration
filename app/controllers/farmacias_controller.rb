class FarmaciasController < ApplicationController
  # GET /farmacias
  # GET /farmacias.json
  def index
    @farmacias = Farmacia.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @farmacias }
    end
  end

  # GET /farmacias/1
  # GET /farmacias/1.json
  def show
    @farmacia = Farmacia.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @farmacia }
    end
  end

  # GET /farmacias/new
  # GET /farmacias/new.json
  def new
    @farmacia = Farmacia.new
    @farmacia.build_endereco

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @farmacia }
    end
  end

  # GET /farmacias/1/edit
  def edit
    @farmacia = Farmacia.find(params[:id])
  end

  # POST /farmacias
  # POST /farmacias.json
  def create
    @farmacia = Farmacia.new(params[:farmacia])
    respond_to do |format|
      if @farmacia.save
        format.html { redirect_to @farmacia, notice: 'Farmacia was successfully created.' }
        format.json { render json: @farmacia, status: :created, location: @farmacia }
      else
        format.html { render action: "new" }
        format.json { render json: @farmacia.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /farmacias/1
  # PUT /farmacias/1.json
  def update
    @farmacia = Farmacia.find(params[:id])

    respond_to do |format|
      if @farmacia.update_attributes(params[:farmacia])
        format.html { redirect_to @farmacia, notice: 'Farmacia was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @farmacia.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /farmacias/1
  # DELETE /farmacias/1.json
  def destroy
    @farmacia = Farmacia.find(params[:id])
    @farmacia.destroy

    respond_to do |format|
      format.html { redirect_to farmacias_url }
      format.json { head :no_content }
    end
  end
end
