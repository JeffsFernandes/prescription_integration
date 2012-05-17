# encoding : utf-8
class UsersController < ApplicationController
	
	#load_and_authorize_resource
	
	def index
	  if params[:ativo] == "false"
	    @users = User.where(:ativo => false).paginate(:page => params[:page])
	  else
	    @users = User.paginate(:page => params[:page]) 
	  end
	end

	def new
		@user = User.new
	end

	def create
		@user = User.new(params[:user])

		respond_to do |format|
			if @user.save
				format.html { redirect_to users_path, :notice => "Usuário criado com sucesso." }
			else
				format.html { redirect_to new_user_path, :notice => "Não foi possivel criar o usuário." }
			end
		end
	end

	def edit
		@user = User.find(params[:id])
	end

	def show
		@user = User.find(params[:id])
		@boletins = @user.boletins.paginate(:page => params[:page])
	end

	def update
		@user = User.find(params[:id])
		#params[:user].delete(:password) if params[:user][:password].blank?
		#params[:user].delete(:password_confirmation) if params[:user][:password].blank? and params[:user][:password_confirmation].blank?

		respond_to do |format|
			if @user.update_attributes(params[:user])
				format.html { redirect_to users_path, :notice => "Usuário alterado com sucesso." }
			else
				format.html { redirect_to edit_user_path(params[:id]), :notice => "Não foi possível alterar o usuário." }
			end
		end
	end

	def destroy
		@user = User.find(params[:id])
		if @user.destroy
		  flash[:notice] = "Successfully deleted User."
		  redirect_to root_path
		end
	end

end
