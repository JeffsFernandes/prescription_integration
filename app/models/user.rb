class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :user_type_id 
  
  def self.Pacientes
    User.where(:tipo => 1)
  end
  
  def self.Medicos
    User.where(:tipo => 2)
  end
  
  def self.Farmacia
    User.where(:tipo => 3)
  end
end
