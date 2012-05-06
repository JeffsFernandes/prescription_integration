PrescriptionIntegration::Application.routes.draw do

  root      :to => 'welcome#index'
  resources :principio_ativos
  resources :medicamentos
  resources :farmacias
  resources :enderecos
end
