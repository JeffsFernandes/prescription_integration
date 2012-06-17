# encoding: utf-8
class User < ActiveRecord::Base

  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, 
                  :tipo, :sexo, :data_nascimento, :crm, :cpf, :telefone, :cnpj, 
                  :rua, :numero, :complemento, :bairro, :cidade, :estado, :cep,
                  :nome, :encrypted_password

  after_find :set_attributes_names
  TIPO = { "Paciente" => 1, "Médico" => 2, "Farmácia" => 3 }
  SEXO = { "Feminino" => 1, "Masculino" => 2 } 
  
<<<<<<< HEAD
  def self.Pacientes
    User.where(:tipo => 1)
  end
  
  def self.Medicos
    User.where(:tipo => 2)
  end
  
  def self.Farmacia
    User.where(:tipo => 3)
=======
  attr_accessor :tipo_print, :sexo_print

  def set_attributes_names
    self.tipo_print = User::TIPO.key(self.tipo)
    self.sexo_print = User::SEXO.key(self.sexo)
>>>>>>> 99f34b167fb0b49d7f99dffc512d6209474f57fc
  end

end
