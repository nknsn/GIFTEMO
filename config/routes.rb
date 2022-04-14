Rails.application.routes.draw do

  devise_for :admins,skip:[:registrations,:passwords],controllers:{
    sessions:"admin/sessions"
  }

  devise_for :users,controllers:{
    registrations: "public/registrations",
    sessions: 'public/sessions'
  }

  devise_scope :user do
    post 'users/guest_sign_in', to: 'users/sessions#guest_sign_in'
  end

  namespace :admin do
    root to: "homes#top"
    resources :genres, only:[:new,:create,:index,:edit,:update,:destroy]
    resources :recommend_gifts, only:[:new,:create,:index,:edit,:update,:destroy,:show]
  end

  scope module: :public do
    root to: "homes#top"
    resources :users, only:[:show,:edit,:update]
    resources :genres, only:[:index]
    resources :recommend_gifts, only:[:index,:show]
    resources :friends, only:[:index,:new,:create,:edit,:update,:destroy]
    resources :present_lists, only:[:index,:create,:edit,:update,:destroy]
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end
