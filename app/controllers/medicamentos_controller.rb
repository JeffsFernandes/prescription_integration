class MedicamentosController < ApplicationController
  before_filter :authenticate_user!
  # GET /medicamentos
  # GET /medicamentos.json
  def index
    @medicamentos = Medicamento.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @medicamentos }
    end
  end

  # GET /medicamentos/1
  # GET /medicamentos/1.json
  def show
    @medicamento = Medicamento.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @medicamento }
    end
  end

  # GET /medicamentos/new
  # GET /medicamentos/new.json
  def new
    @medicamento = Medicamento.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @medicamento }
    end
  end

  # GET /medicamentos/1/edit
  def edit
    @medicamento = Medicamento.find(params[:id])
  end

  # POST /medicamentos
  # POST /medicamentos.json
  def create
    @medicamento = Medicamento.new(params[:medicamento])

    respond_to do |format|
      if @medicamento.save
        format.html { redirect_to @medicamento, notice: 'Medicamento was successfully created.' }
        format.json { render json: @medicamento, status: :created, location: @medicamento }
      else
        format.html { render action: "new" }
        format.json { render json: @medicamento.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /medicamentos/1
  # PUT /medicamentos/1.json
  def update
    @medicamento = Medicamento.find(params[:id])

    respond_to do |format|
      if @medicamento.update_attributes(params[:medicamento])
        format.html { redirect_to @medicamento, notice: 'Medicamento was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @medicamento.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /medicamentos/1
  # DELETE /medicamentos/1.json
  def destroy
    @medicamento = Medicamento.find(params[:id])
    @medicamento.destroy

    respond_to do |format|
      format.html { redirect_to medicamentos_url }
      format.json { head :no_content }
    end
  end
end
