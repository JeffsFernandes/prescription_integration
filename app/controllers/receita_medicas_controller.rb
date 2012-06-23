class ReceitaMedicasController < ApplicationController
  before_filter :authenticate_user!
  # GET /receita_medicas
  # GET /receita_medicas.json
  def index
    
    if current_user.tipo == 2
      @receita_medicas = ReceitaMedica.where(:medico_id => current_user.id)
    elsif current_user.tipo == 1
      @receita_medicas = ReceitaMedica.where(:paciente_id => current_user.id)
    end

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
      format.json { render json: {
        :receita => @receita_medica, 
        :medicamentos => @receita_medica.item_receitas.collect {|t| [t.medicamento.nome, t.posologia, t.quantidade]} } }
    end
  end                                                                     
  
  # GET /receita_medicas/new
  # GET /receita_medicas/new.json
  def new
   @receita_medica = ReceitaMedica.new
   @medicamentos = Medicamento.all
   @users = current_user.pacientes.all
   @historicos = Historico.all
   @receita_medica.item_receitas.build
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
    @receita_medica.medico = current_user

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

  def show_for_farmacia
    if params[:search_cpf] && params[:search_receita] && current_user.tipo == 3
      @receita_medica = ReceitaMedica.where(:id => params[:search_receita])
      @receita_medica = @receita_medica.to_a.first
      if !@receita_medica.nil? && (@receita_medica.belongs_to_patient?(params[:search_cpf]) || Autorizado.where(:cpf => params[:search_cpf], :user_id => @receita_medica.paciente_id).to_a.size > 0)
        redirect_to @receita_medica 
      else       
        flash[:error] = 'Receita nao encontrada'
        redirect_to venda_search_path
      end
    else
      raise 'Operacao invalida'
    end
  end

  def vender
    venda = Venda.new(:farmacia_id => params[:farmacia], :receita_medica_id => params[:receita])
    venda.save
    @receita_medica = ReceitaMedica.find(params[:receita])
    @receita_medica.status_id = Status.find_by_nome('Finalizado').id

    @receita_medica.save
    flash[:msg] = 'Venda da receita registrada com sucesso!'
    redirect_to @receita_medica
  end
end
