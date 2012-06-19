class ApiController < ActionController::Base
  def sign_in
    cpf = params[:cpf]
    password = params[:password]
    validated = false
    user = User.find_by_cpf(cpf)
    validated = user.valid_password?(password) if !user.nil?      
    receitas = []

    receitas = receitas(user) if validated
    format_json_receitas validated, receitas       

  end
  
  def receitas(patient)
    @receita_medica = ReceitaMedica.where(:paciente_id => patient.id)
  end

  def format_json_receitas (validated, receitas)
    respond_to do |format|
      format.json { 
        render :json => {:validated => validated,
                         :receitas => receitas.collect{|rec| format_json(rec)}
                       }
      }
    end
  end

  def format_json(receita)      
    r = receita
    [r.id, r.medico.nome, 
      r.status.nome, r.created_at, 
      r.item_receitas.collect {|t| ["#{t.medicamento.nome} - #{t.posologia} - #{t.quantidade}" ]} ]
  end
end

