Rails.application.routes.draw do
  root to: 'cocktails#index'
  resources :cocktails, only: %i[new create index show destroy edit update] do
    resources :ingredients, only: %i[new create index show edit update]
    resources :doses, only: %i[new create index show edit update]
  end
  resources :doses, only: %i[destroy]
end
