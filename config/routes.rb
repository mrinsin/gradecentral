Rails.application.routes.draw do
  resources :grades
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_scope :user do
    root "grades#index"
  end

end
