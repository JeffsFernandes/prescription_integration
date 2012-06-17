PrescriptionIntegration::Application.routes.draw do

  get "api/sign_in"

  devise_for :users

  resources :historicos

  resources :receita_medicas

  root      :to => 'welcome#index'
  resources :principio_ativos
  resources :medicamentos
  resources :farmacias
  resources :enderecos
end
