Rails.application.routes.draw do
  root 'bootstraps#top'

  resources :bootstraps do
    collection do
      get :top
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
