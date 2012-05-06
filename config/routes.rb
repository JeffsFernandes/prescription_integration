PrescriptionIntegration::Application.routes.draw do

  resources :historicos

  resources :receita_medicas

  root      :to => 'welcome#index'
  resources :principio_ativos
  resources :medicamentos
  resources :farmacias
  resources :enderecos
end
