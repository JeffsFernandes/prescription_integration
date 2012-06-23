class MedicosAutorizadosController < ApplicationController

  # POST /medicos_autorizados
  # POST /medicos_autorizados.json
  def create
    @medicos_autorizado = current_user.medicos_autorizados.build(:medico_id => params[:medico_id])

    respond_to do |format|
      if @medicos_autorizado.save
        flash[:notice] = "Medico adicionado"
        format.html { redirect_to user_path(current_user), notice: 'Medicos autorizado was successfully created.' }
        format.json { render json: @medicos_autorizado, status: :created, location: @medicos_autorizado }
      else
        flash[:error] = "Medico nao adicionado"
        format.html { render action: "new" }
        format.json { render json: @medicos_autorizado.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /medicos_autorizados/1
  # DELETE /medicos_autorizados/1.json
  def destroy
    @medicos_autorizado = current_user.medicos_autorizados.find(params[:id])
    @medicos_autorizado.destroy

    respond_to do |format|
      format.html { redirect_to current_user }
      format.json { head :no_content }
    end
  end
end
