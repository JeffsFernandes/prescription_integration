class ApiController < ActionController::Base
  def sign_in
    email = params[:email]
    password = params[:password]
    validated = false
    user = User.find_by_email(email)
    validated = user.valid_password?(password) if !user.nil?  
    
    respond_to do |format|             
        format.json { render json: validated }
    end        
  end
end