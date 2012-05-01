PrescriptionIntegration::Application.routes.draw do

  root      :to => 'welcome#index'
  resources :principio_ativos
  resources :medicamentos
  resources :farmacias do
  	resources :enderecos
  end
end
