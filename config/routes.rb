PrescriptionIntegration::Application.routes.draw do

  get "venda/search"

  get "api/sign_in"

  get "receita_medicas/show_for_farmacia"
  devise_for :users
  resources :historicos

  resources :receita_medicas

  root      :to => 'welcome#index'
  resources :principio_ativos
  resources :medicamentos
  resources :farmacias
  resources :enderecos
end
