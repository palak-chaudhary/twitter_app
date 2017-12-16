Rails.application.routes.draw do
	devise_for :twitter_users
	get 'users/new'

	root 'welcome#index'
  resources :user_followings do
  	post :create_follow_user, :on => :member
    post :new_user_following, :on => :member
  end
  	
  resources :tweets
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
