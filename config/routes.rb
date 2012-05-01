PrescriptionIntegration::Application.routes.draw do
  resources :farmacia

  root      :to => 'welcome#index'
  resources :principio_ativos
  resources :medicamentos

end
