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

ActiveRecord::Schema.define(:version => 20120506161332) do

  create_table "enderecos", :force => true do |t|
    t.integer  "farmacia_id"
    t.string   "rua"
    t.integer  "numero"
    t.string   "complemento"
    t.string   "bairro"
    t.string   "cidade"
    t.string   "estado"
    t.string   "cep"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "farmacias", :force => true do |t|
    t.string   "nome"
    t.integer  "endereco_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "historicos", :force => true do |t|
    t.string   "nome"
    t.text     "descricao"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "medicamento_receita", :force => true do |t|
    t.integer  "medicamento_id"
    t.integer  "receita_medica_id"
    t.float    "quantidade"
    t.string   "posologia"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "medicamentos", :force => true do |t|
    t.string   "nome"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "principio_ativos", :force => true do |t|
    t.string   "nome"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "principio_receita", :force => true do |t|
    t.integer  "principio_ativo_id"
    t.integer  "receita_medica_id"
    t.integer  "quantidade"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "receita_medicas", :force => true do |t|
    t.integer  "medico_id"
    t.integer  "paciente_id"
    t.integer  "historico_id"
    t.integer  "farmacia_id"
    t.date     "data_prescricao"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

end
