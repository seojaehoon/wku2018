Rails.application.routes.draw do
  resources :posts
  get 'searches/result'
  get 'map/index'
  get 'posts/index'
  get 'chat/index'
  get 'chat/new'
  get 'mypage/index'
  get 'chat/create'
  get 'chat/learn'
  get 'user/registrations/edit'
  post '/posts/:post_id' =>"comments#create"
  delete '/posts/:post_id/comments/:id' =>"comments#destroy"
  post '/posts/:post_id/comments/:id' =>"comments#update"
  devise_for :users
  root 'main#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
