Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  concern :paginatable do
    get '(page/:page)', action: :index, on: :collection, as: ''
  end
  
  resources :posts , concerns: :paginatable do
    resources :comments
  end
  root "posts#index"

end
