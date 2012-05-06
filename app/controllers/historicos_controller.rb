class HistoricosController < ApplicationController
  # GET /historicos
  # GET /historicos.json
  def index
    @historicos = Historico.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @historicos }
    end
  end

  # GET /historicos/1
  # GET /historicos/1.json
  def show
    @historico = Historico.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @historico }
    end
  end

  # GET /historicos/new
  # GET /historicos/new.json
  def new
    @historico = Historico.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @historico }
    end
  end

  # GET /historicos/1/edit
  def edit
    @historico = Historico.find(params[:id])
  end

  # POST /historicos
  # POST /historicos.json
  def create
    @historico = Historico.new(params[:historico])

    respond_to do |format|
      if @historico.save
        format.html { redirect_to @historico, notice: 'Historico was successfully created.' }
        format.json { render json: @historico, status: :created, location: @historico }
      else
        format.html { render action: "new" }
        format.json { render json: @historico.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /historicos/1
  # PUT /historicos/1.json
  def update
    @historico = Historico.find(params[:id])

    respond_to do |format|
      if @historico.update_attributes(params[:historico])
        format.html { redirect_to @historico, notice: 'Historico was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @historico.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /historicos/1
  # DELETE /historicos/1.json
  def destroy
    @historico = Historico.find(params[:id])
    @historico.destroy

    respond_to do |format|
      format.html { redirect_to historicos_url }
      format.json { head :no_content }
    end
  end
end
