Rails.application.routes.draw do
  get 'sections/index'
  get 'students/index'
  get 'assignments/index'
  get 'classrooms/index'
  get 'students/index'

  
  

  resources :classrooms do
    resources :sections
  end
  devise_for :users, :controllers => { registrations: 'registrations' }
  
  resources :assignments
  
  resources :students do
    resources :assignments
  end
  
  put '/sections/:id', to: 'sections#join', as: 'section'

  resources :sections do
    resources :students
  end


  devise_scope :user do

    authenticated :user do
      root 'classrooms#index', as: :authenticated_root
    end
  
    unauthenticated do
      root 'devise/sessions#new', as: :unauthenticated_root
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
