class ReceitaMedicasController < ApplicationController
  # GET /receita_medicas
  # GET /receita_medicas.json
  def index
    @receita_medicas = ReceitaMedica.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @receita_medicas }
    end
  end

  # GET /receita_medicas/1
  # GET /receita_medicas/1.json
  def show
    @receita_medica = ReceitaMedica.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @receita_medica }
    end
  end

  # GET /receita_medicas/new
  # GET /receita_medicas/new.json
  def new
    @receita_medica = ReceitaMedica.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @receita_medica }
    end
  end

  # GET /receita_medicas/1/edit
  def edit
    @receita_medica = ReceitaMedica.find(params[:id])
  end

  # POST /receita_medicas
  # POST /receita_medicas.json
  def create
    @receita_medica = ReceitaMedica.new(params[:receita_medica])

    respond_to do |format|
      if @receita_medica.save
        format.html { redirect_to @receita_medica, notice: 'Receita medica was successfully created.' }
        format.json { render json: @receita_medica, status: :created, location: @receita_medica }
      else
        format.html { render action: "new" }
        format.json { render json: @receita_medica.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /receita_medicas/1
  # PUT /receita_medicas/1.json
  def update
    @receita_medica = ReceitaMedica.find(params[:id])

    respond_to do |format|
      if @receita_medica.update_attributes(params[:receita_medica])
        format.html { redirect_to @receita_medica, notice: 'Receita medica was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @receita_medica.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /receita_medicas/1
  # DELETE /receita_medicas/1.json
  def destroy
    @receita_medica = ReceitaMedica.find(params[:id])
    @receita_medica.destroy

    respond_to do |format|
      format.html { redirect_to receita_medicas_url }
      format.json { head :no_content }
    end
  end
end
