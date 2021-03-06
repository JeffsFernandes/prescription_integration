PrescriptionIntegration::Application.routes.draw do

  resources :medicos_autorizados

  get "venda/search"

  get "api/sign_in"

  get "receita_medicas/show_for_farmacia"
  
  get "receita_medicas/show_for_medico"
  get "receita_medicas/search"

  post "receita_medicas/vender"
  
  devise_for :users
  # ,  
  #             :controllers => {
  #               :registrations => 'devise/registrations',
  #               :sessions => 'devise/sessions',
  #             }
  
  resources :users
  resources :historicos

  resources :receita_medicas

  root      :to => 'welcome#index'
  resources :principio_ativos
  resources :medicamentos
  resources :farmacias
  resources :enderecos

  match "/medicos" => "users#medicos"
  match "/pacientes" => "users#pacientes"
end
