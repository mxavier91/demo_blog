Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :posts do
    resources :comments
  end
  # "root" is a Rails route that says the default address for your site is "posts#index"
  root 'posts#index'
end
