Rails.application.routes.draw do
  root "sites#show"
  get "/:slug", to: "sites#show"
end
