Rails.application.routes.draw do
  root "sites#show"
  resources :subscribe_users, only: [:create]

  get "/:slug", to: "sites#show"
end
