Rails.application.routes.draw do
  devise_for :admins, controllers: {
    sessions: 'admins/sessions',
    registrations: 'admins/registrations'
  }

  root "home#index"

  devise_for :users
  
  devise_scope :admin do
    get '/admins/sign_out', to: 'admins/sessions#destroy'
  end

  authenticated :admin_user do
    root to: "admin#index", as: :admin_root
  end

  
  
  

end
