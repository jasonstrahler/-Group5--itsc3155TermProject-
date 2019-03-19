Rails.application.routes.draw do
  get 'user/user'
  get 'classroom/classroom'
  get 'student/student'
  get 'login/login'
  
  root 'login#login'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
