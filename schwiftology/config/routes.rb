Rails.application.routes.draw do
  devise_for :users
  get '/links', to: 'links#index'
  get '/new', to: 'links#new'


  resources :links do
    resources :comments
  end

  root to: "pages#home"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
