Nycsports::Application.routes.draw do

	resources :users, :teams, :feeds
  root :to => 'home#index'
end
