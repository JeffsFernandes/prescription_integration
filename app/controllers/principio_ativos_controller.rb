class PrincipioAtivosController < ApplicationController
  # GET /principio_ativos
  # GET /principio_ativos.json
  def index
    @principio_ativos = PrincipioAtivo.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @principio_ativos }
    end
  end

  # GET /principio_ativos/1
  # GET /principio_ativos/1.json
  def show
    @principio_ativo = PrincipioAtivo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @principio_ativo }
    end
  end

  # GET /principio_ativos/new
  # GET /principio_ativos/new.json
  def new
    @principio_ativo = PrincipioAtivo.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @principio_ativo }
    end
  end

  # GET /principio_ativos/1/edit
  def edit
    @principio_ativo = PrincipioAtivo.find(params[:id])
  end

  # POST /principio_ativos
  # POST /principio_ativos.json
  def create
    @principio_ativo = PrincipioAtivo.new(params[:principio_ativo])

    respond_to do |format|
      if @principio_ativo.save
        format.html { redirect_to @principio_ativo, notice: 'Principio ativo was successfully created.' }
        format.json { render json: @principio_ativo, status: :created, location: @principio_ativo }
      else
        format.html { render action: "new" }
        format.json { render json: @principio_ativo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /principio_ativos/1
  # PUT /principio_ativos/1.json
  def update
    @principio_ativo = PrincipioAtivo.find(params[:id])

    respond_to do |format|
      if @principio_ativo.update_attributes(params[:principio_ativo])
        format.html { redirect_to @principio_ativo, notice: 'Principio ativo was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @principio_ativo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /principio_ativos/1
  # DELETE /principio_ativos/1.json
  def destroy
    @principio_ativo = PrincipioAtivo.find(params[:id])
    @principio_ativo.destroy

    respond_to do |format|
      format.html { redirect_to principio_ativos_url }
      format.json { head :no_content }
    end
  end
end
