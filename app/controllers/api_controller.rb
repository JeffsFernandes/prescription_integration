class ApiController < ActionController::Base
  def sign_in
    cpf = params[:cpf]
    password = params[:password]
    validated = false
    user = User.find_by_cpf(cpf)
    validated = user.valid_password?(password) if !user.nil?  
     
    respond_to do |format|             
        format.json { render json: validated }
    end        
  end
  
  def receitas(patient)
    @receita_medica = ReceitaMedica.where(:patient_id => )

    respond_to do |format|
      format.html # show.html.erb                                                
      format.json { render json: {
        :receita => @receita_medica, 
        :medicamentos => @receita_medica.item_receitas.collect {|t| [t.medicamento.nome, t.posologia, t.quantidade]} } }
    end
  end
end