Rails.application.routes.draw do
  resources :quotes

  match '*path', :to => 'application#routing_error', via: [:all]
end
