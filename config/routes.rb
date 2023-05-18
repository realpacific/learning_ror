Rails.application.routes.draw do
  resources :answers
  resources :questions
  root "home#index"
  get '/about' => "home#about"
  post '/questions/:question_id/answers' => "answers#create"
end
