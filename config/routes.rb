# -*- encoding : utf-8 -*-
Voteapp::Application.routes.draw do
  resources :votes do
    collection do
      get :byme
      get :has_voted
    end
    
		member do
		  get :voted_users
		  get :result
		end
  end

  resources :vote_results
  
  # -- 用户登录认证相关 --
  root :to=>"index#index"
  get  '/login'  => 'sessions#new'
  post '/login'  => 'sessions#create'
  get  '/logout' => 'sessions#destroy'
  
  get  '/signup'        => 'signup#form'
  post '/signup_submit' => 'signup#form_submit'
  
end
