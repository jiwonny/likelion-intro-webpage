Rails.application.routes.draw do
  devise_for :users
  get 'comments/create'

  get 'comments/destroy'

  post 'home/recruit'
  get 'home/recruitindex'
  post '/home/applycreate'
  # get '/home/applyshow/:post_id'
  get '/home/applyshow'
  get '/home/applyshow/1'
  # get '/home/applyshow/:post_id' => 'home#applyshow'

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
