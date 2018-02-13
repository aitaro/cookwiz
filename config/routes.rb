Rails.application.routes.draw do
  get 'cook_recipes/search_page'
  post 'cook_recipes/search'
  root 'static_pages#home'
  get  '/help',    to: 'static_pages#help'
  get  '/about',   to: 'static_pages#about'
  get  '/contact', to: 'static_pages#contact'
  get  '/signup', to: 'users#new'
  resources :users
end
