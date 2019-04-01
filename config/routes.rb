Rails.application.routes.draw do
  get 'sections/index'
  get 'students/index'
  devise_for :users
  get 'user/user'
  get 'classroom/classroom'
  get 'student/student'
  get 'login/login'
  get 'login/classroom'
  

  resources :classrooms
  resources :students
  

  devise_scope :user do

    
    authenticated :user do
      root 'classroom#classroom', as: :authenticated_root
    end
  
    unauthenticated do
      root 'devise/sessions#new', as: :unauthenticated_root
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
