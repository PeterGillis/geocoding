Rails.application.routes.draw do
  resources :museums, only: [:index] do
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  end
  # Add a real time route
  mount ActionCable.server => '/cable'
end
