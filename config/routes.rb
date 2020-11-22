Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'application#question'
  get 'question', to: 'question#question', as: :question
  get 'answer', to: 'question#answer', as: :answer
end
