Rails.application.routes.draw do
  root "sites#show"
  get "/:id", to: "sites#show"
end
