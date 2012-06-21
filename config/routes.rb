PrescriptionIntegration::Application.routes.draw do

  get "venda/search"

  get "api/sign_in"

  get "receita_medicas/show_for_farmacia"

  post "receita_medicas/vender"
  
  devise_for :users
  resources :users
  resources :historicos

  resources :receita_medicas

  root      :to => 'welcome#index'
  resources :principio_ativos
  resources :medicamentos
  resources :farmacias
  resources :enderecos
end
