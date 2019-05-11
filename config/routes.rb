Rails.application.routes.draw do
  resources :authors, only: %i[show index] do
    resources :posts, only: %i[show index new edit]
  end

  resources :posts, only: %i[index show new create edit update]

  root 'posts#index'

  namespace :admin do
    resources :stats, only: [:index]
  end
  # scope '/admin', module: 'admin' do
  #   resources :stats, only: [:index]
  # end

  #same as this route
  #get '/admin/stats', to: 'stats#index'
end
