Rails.application.routes.draw do
  devise_for :users
  namespace :api, defaults: { format: :json } do
    scope module: :v1 do
      resources :users, :only => [:show, :create, :update, :destroy] do
        # this is the line
        resources :products, :only => [:create, :update, :destroy]
      end
      resources :sessions, :only => [:create, :destroy]
      resources :products, :only => [:show, :index]
    end  
  end  
end