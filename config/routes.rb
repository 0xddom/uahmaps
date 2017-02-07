Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Points of interest are read only
  resources :point_of_interest, only: [:index, :show]

  root 'main_view#index'
end
