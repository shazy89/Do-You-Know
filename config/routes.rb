Rails.application.routes.draw do
  resources :single_questions
  resources :users

  get 'single_questions/v1/:questionType', to: 'single_questions#get_by_type'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
