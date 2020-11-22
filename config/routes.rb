Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'question#question'
  resources :question
  get 'answer', to: 'question#answer', as: :answer
end
