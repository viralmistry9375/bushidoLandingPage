Rails.application.routes.draw do
  resources :contacts, only: :create
  get 'about-us',   to: 'home#about_us',    as: :about_us
  get 'what-we-do', to: 'home#what_we_do',  as: :what_we_do
  get 'our-team',   to: 'home#our_team',    as: :our_team
  get 'contact-us', to: 'contacts#index',   as: :contact_us

  root "home#index"
end
