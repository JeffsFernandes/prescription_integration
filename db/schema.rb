# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120623154713) do

  create_table "autorizados", :force => true do |t|
    t.string   "cpf"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "user_id"
  end

  create_table "historicos", :force => true do |t|
    t.string   "nome"
    t.text     "descricao"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "item_receita", :force => true do |t|
    t.integer  "receita_medica_id"
    t.integer  "medicamento_id"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
    t.string   "posologia"
    t.string   "quantidade"
  end

  create_table "medicamentos", :force => true do |t|
    t.string   "nome"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.boolean  "principio_ativo"
  end

  create_table "medicos_autorizados", :force => true do |t|
    t.integer  "user_id"
    t.integer  "medico_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "receita_medicas", :force => true do |t|
    t.integer  "medico_id"
    t.integer  "paciente_id"
    t.integer  "historico_id"
    t.integer  "farmacia_id"
    t.date     "data_prescricao"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.integer  "status_id"
  end

  create_table "statuses", :force => true do |t|
    t.string   "nome"
    t.text     "descricao"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email",                                 :default => "", :null => false
    t.string   "encrypted_password",     :limit => 128, :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                         :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                                            :null => false
    t.datetime "updated_at",                                            :null => false
    t.string   "cnpj"
    t.string   "rua"
    t.string   "numero"
    t.string   "complemento"
    t.string   "bairro"
    t.string   "estado"
    t.string   "cep"
    t.string   "cidade"
    t.string   "nome"
    t.integer  "tipo"
    t.string   "cpf"
    t.string   "crm"
    t.date     "data_nascimento"
    t.string   "telefone"
    t.integer  "sexo"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  create_table "vendas", :force => true do |t|
    t.integer  "receita_medica_id"
    t.integer  "farmacia_id"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

end
