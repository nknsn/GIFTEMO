Rails.application.routes.draw do

  devise_for :admins
  devise_for :users

  namespace :admin do
    root to: "homes#top"
    resources :genre, only:[:new,:create,:index,:edit,:update,:destroy]
    resources :recommend_gift, only:[:new,:create,:index,:edit,:update,:destroy,:show]
  end

  scope module: :public do
    root to: "homes#top"
    resources :genre, only:[:index]
    resources :recommend_gift, only:[:index,:show]
    resources :present_list, only:[:index,:new,:create,:edit,:update,:destroy]
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end
