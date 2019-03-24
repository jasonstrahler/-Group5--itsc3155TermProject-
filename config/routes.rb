Rails.application.routes.draw do
  devise_for :users
  get 'user/user'
  get 'classroom/classroom'
  get 'student/student'
  get 'login/login'
  
  resources :users
  resources :classrooms
  resources :students
  
  root 'login#login'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
