Rails.application.routes.draw do
  root "sites#show"
  resources :contacts, only: :create

  get "/:slug", to: "sites#show"
end
