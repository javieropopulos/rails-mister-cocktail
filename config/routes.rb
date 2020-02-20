Rails.application.routes.draw do
  resources :cocktails, only: %i[new create index show destroy] do
    resources :ingredients, only: %i[new create index show]
    resources :doses, only: %i[new create index show]
  end
end
