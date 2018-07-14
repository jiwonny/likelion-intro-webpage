Rails.application.routes.draw do
  get 'about/about'

  devise_for :users
  get 'comments/create'

  get 'comments/destroy'

  resources :memonlies do
    resources :comments, only: [:create, :destroy]
  end

  root 'home#index'

  get '/about' => 'home#about'
  get '/recruit' => 'home#recruit'
  get '/login' => 'home#login'
  get '/mem' => 'home#mem'

  get 'home/curri'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
